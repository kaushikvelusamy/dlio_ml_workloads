source $(dirname ${BASH_SOURCE[0]})/config_DGXA100_common.sh

## DL params
export BATCHSIZE="4"
export APPLY_LOG_TRANSFORM="1"
export LR="0.008"
export NUMEPOCHS="1"

export NUM_TRAINING_SAMPLES="1024"
export NUM_VALIDATION_SAMPLES="128"

export DGXNGPU=1

export MXNET_EXEC_BULK_EXEC_MAX_NODE_TRAIN_FWD=999
export MXNET_EXEC_BULK_EXEC_MAX_NODE_TRAIN_BWD=999
export NCCL_COLLNET_ENABLE=0 # disable SHARP

## System run parms
export DGXNNODES=1
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
export WALLTIME=01:00:00
