LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M4/raw-logs/med/strong/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M4/optimized/mlperf_utils/launch-mlperf-benchmark.sh --job-name m4-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M4/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5336636.sqsh --config oc20/pytorch/configs/config_DGXA100_8x8x16.sh --runsub oc20/pytorch/run.sub --nexp 2 --npar 5   --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M4/raw-logs/large/strong/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M4/optimized/mlperf_utils/launch-mlperf-benchmark.sh --job-name m4-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M4/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5336636.sqsh --config oc20/pytorch/configs/config_DGXA100_64x8x4.sh --runsub oc20/pytorch/run.sub --nexp 2 --npar 5   --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M4/raw-logs/jumbo/weak/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M4/optimized/mlperf_utils/launch-mlperf-benchmark.sh --job-name m4-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M4/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5336636.sqsh --config oc20/pytorch/configs/config_DGXA100_60x8x8x16.sh --runsub oc20/pytorch/run.sub --partition large_runs   --
