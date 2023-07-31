import functools
import os
import glob
import argparse
import math
import numpy as np
import tensorflow as tf

from mpi4py import MPI
import tempfile
import gzip
import multiprocessing as mp


def parse_args():
    """Parse command line arguments"""
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '-i', '--input', help="Directory which contains the input data", required=True)
    parser.add_argument(
        '-o', '--output', help="Directory which will hold the output data", required=True)
    parser.add_argument('-p', '--num-processes', default=4,
                        help="Number of processes to spawn for file conversion")
    parser.add_argument('-c', '--compression', default=None,
                        help="Compression Type.")
    return parser.parse_args()


def filter_func(item, lst):
    item = os.path.basename(item).replace(".tfrecord", ".tfrecord.gzip")
    return item not in lst


tmp_file = tempfile.mkstemp()


def convert(record, ofname_data):

    feature_spec = dict(x=tf.io.FixedLenFeature([], tf.string),
                        y=tf.io.FixedLenFeature([4], tf.float32))

    example = tf.io.parse_single_example(record, features=feature_spec)
    data = tf.io.decode_raw(example['x'], tf.int16)
    data = tf.reshape(data, (128, 128, 128, 4))

    example = tf.train.Example(features=tf.train.Features(
        feature={
            "x": tf.train.Feature(bytes_list=tf.train.BytesList(value=[data.numpy().tobytes()])),
            "y": tf.train.Feature(float_list=tf.train.FloatList(value=np.ravel(example['y'].numpy())))
        }
    ))

    with tf.io.TFRecordWriter(tmp_file[1]) as file_writer:
        file_writer.write(example.SerializeToString())

    with gzip.open(ofname_data, "wb", compresslevel=7) as fdst, open(tmp_file[1], "rb") as fsrc:
        fdst.write(fsrc.read())


def main():
    """Main function"""
    # Parse the command line
    args = parse_args()

    # get rank
    dataset = tf.data.TFRecordDataset(args.input, compression_type=args.compression)

    for record in dataset:
        convert(record, args.output)

if __name__ == "__main__":
    main()
