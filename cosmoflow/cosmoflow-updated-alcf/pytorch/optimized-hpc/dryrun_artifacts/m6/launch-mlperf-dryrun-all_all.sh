LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/med/strong/cosmoflow /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-cosmoflow --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+cosmoflow.pytorch.5557107.sqsh --config cosmoflow/pytorch/configs/config_DGXA100_16x8x1.sh --runsub cosmoflow/pytorch/run.sub --nexp 2 --npar 10 --partition luna --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/large/strong/cosmoflow /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-cosmoflow --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+cosmoflow.pytorch.5557107.sqsh --config cosmoflow/pytorch/configs/config_DGXA100_128x8x1_other.sh --runsub cosmoflow/pytorch/run.sub --nexp 5 --npar 4 --partition luna --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/jumbo/weak/cosmoflow /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-cosmoflow --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+cosmoflow.pytorch.5557107.sqsh --config cosmoflow/pytorch/configs/config_DGXA100_115x4x8x1.sh --runsub cosmoflow/pytorch/run.sub --partition large_runs  --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/med/strong/deepcam /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-deepcam --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+deepcam.pytorch.5557109.sqsh --config deepcam/pytorch/configs/config_DGXA100_64x8x2.sh --runsub deepcam/pytorch/run.sub --nexp 10 --npar 1 --partition luna --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/large/strong/deepcam /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-deepcam --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+deepcam.pytorch.5557109.sqsh --config deepcam/pytorch/configs/config_DGXA100_256x8x1.sh --runsub deepcam/pytorch/run.sub --nexp 10 --npar 1 --partition large_runs  --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/large_quiet/strong/deepcam /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-deepcam --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+deepcam.pytorch.5557109.sqsh --config deepcam/pytorch/configs/config_DGXA100_256x8x1_quiet.sh --runsub deepcam/pytorch/run.sub --nexp 10 --npar 1 --partition large_runs  --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/jumbo/weak/deepcam /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-deepcam --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+deepcam.pytorch.5557109.sqsh --config deepcam/pytorch/configs/config_DGXA100_240x2x8x8_weak.sh --runsub deepcam/pytorch/run.sub --partition large_runs  --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/med/strong/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5557108.sqsh --config oc20/pytorch/configs/config_DGXA100_8x8x16.sh --runsub oc20/pytorch/run.sub --nexp 2 --npar 5 --partition luna --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/large/strong/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5557108.sqsh --config oc20/pytorch/configs/config_DGXA100_64x8x4.sh --runsub oc20/pytorch/run.sub --nexp 2 --npar 5 --partition luna --account mlperf --
LOGDIR=/lustre/fsw/mlperf/v2.1-dryruns/M6/raw-logs/jumbo/weak/oc20 /lustre/fsw/mlperf/v2.1-dryruns/M6/optimized-hpc/mlperf_utils/launch-mlperf-benchmark.sh --job-name m6-oc20 --container /lustre/fsw/mlperf/v2.1-dryruns/M6/containers/dl+mlperf+optimized-hpc+oc20.pytorch.5557108.sqsh --config oc20/pytorch/configs/config_DGXA100_57x8x8x16.sh --runsub oc20/pytorch/run.sub --partition large_runs  --account mlperf --
