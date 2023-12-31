source $(dirname ${BASH_SOURCE[0]})/config_DGXA100_common.sh

## DL params
export BATCHSIZE="1"
export APPLY_LOG_TRANSFORM="1"
export INIT_LR="0.003"
export LR="0.024"
export NUMEPOCHS="70"

export WARMUP_EPOCHS="2"
export LRSCHED_EPOCHS="32 48"

export APPLY_SHUFFLE="1"
export APPLY_PRESHUFFLE="0"
export GRAD_PREDIV_FACTOR="2.0"
export DATA_SHARD_MULTIPLIER="4"

export MXNET_EXEC_BULK_EXEC_MAX_NODE_TRAIN_FWD=999
export MXNET_EXEC_BULK_EXEC_MAX_NODE_TRAIN_BWD=999

export NCCL_COLLNET_ENABLE=1 # enable SHARP
export SBATCH_NETWORK=sharp

export STAGING_DIR="/tmp"

## System run parms
export DGXNNODES=256
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
WALLTIME_MINUTES=15
export WALLTIME=$(( 15 + (${NEXP:-1} * ${WALLTIME_MINUTES}) ))
