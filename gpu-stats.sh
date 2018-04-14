watch -n 5 nvidia-smi --query-gpu=index,timestamp,temperature.gpu,fan.speed,power.draw,clocks.gr,clocks.mem --format=csv,noheader
