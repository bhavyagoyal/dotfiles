
# Total GPUs on cluster
total_gpus_list(){
  scontrol show nodes -o | awk '{print $9}' | grep gpu 
}

# Total Count of GPUs
total_gpus(){
  total_gpus_list | awk -F: '{i += $3} END {print i}'
}

# Available GPUs on cluster
avail_gpus_list(){
	scontrol show nodes -o | grep -v DOWN | grep -v DRAIN | awk '{print $9}' | grep gpu 
}

# Available number of GPUs
avail_gpus(){
	avail_gpus_list | awk -F: '{i += $3} END {print i}'
}

# Number of GPUs in use
# Use first argument (optional) as username
used_gpus() {
	if [ $# -eq 0 ]; then
                echo "IN-USE / AVAILABLE / TOTAL"
		AVAIL_GPUS=`avail_gpus`
                TOTAL_GPUS=`total_gpus`
		squeue -o '%b %t' | grep gpu | grep R |  awk '{print $i}' | awk -F: '{i += $NF;} END {printf "%d",i}'; echo " / $AVAIL_GPUS / $TOTAL_GPUS"
	elif [ $# -eq 1 ]; then
		squeue -o '%b %t %u' | grep gpu | grep $1 | grep R | awk '{print $i}' | awk -F: '{i += $NF;} END {print i}'
	else
		echo "Use only 1 argument"
	fi
}


# Number of GPUs which are scheduled
scheduled_gpus() {
  if [ $# -eq 0 ]; then
    squeue -o '%b %t' | grep gpu | grep "R\|PD" | sed 's/gpu://g' | awk '{i += $1;} END {print i}'
  elif [ $# -eq 1 ]; then
    squeue -o '%b %t %u' | grep gpu | grep $1 | grep "R\|PD" | sed 's/gpu://g' | awk '{i += $1;} END {print i}'
  else
    echo "Use only 1 argument"
  fi
}

alias sload="sinfo --format '%10n %8O %e'"

# Total number of free GPUs.
free_gpus(){
  AVAIL_GPUS=`avail_gpus`
  RUN_GPUS=`scheduled_gpus`
  echo $((AVAIL_GPUS - RUN_GPUS))
}

# Get an interactive GPU/CPU shell
# Usage: it_shell [#GPUS] [hostname]
# Remember to exit when done
it_shell(){
  flags=" "
  if [ $# -eq 0 ]; then
    GPUS=0
  elif [ $# -eq 1 ]; then
    GPUS=$1
  elif [ $# -eq 2 ]; then
    flags+=" --nodelist=$2 "
  else
    echo "Use upto 2 arguments"
  fi
  flags+=" --gres=gpu:$GPUS "
  echo $flags
  srun -C gpu $flags --pty -u bash -i
}


