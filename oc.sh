export DISPLAY=:0

sudo nvidia-smi -pm 1

sudo nvidia-smi -pl 140

sudo nvidia-settings -a /GPUFanControlState=1

sudo nvidia-settings -a /GPUPowerMizerMode=1 

sudo nvidia-settings -a /GPUTargetFanSpeed=80

sudo nvidia-settings -a /GPUGraphicsClockOffsetAllPerformanceLevels=120

sudo nvidia-settings -a /GPUMemoryTransferRateOffsetAllPerformanceLevels=500
