# `slurm` - Command

## Show Status of Cluster Nodes

```shell
sinfo
```

## Show Detailed Information of a Node

```shell
scontrol show node [node_tag]
```

## Login to a Node

```shell
ssh [node_tag]
```

## Run a Task

```shell
srun
```

## Submit a Batch Task

```shell
# Command
sbatch \
    --comment [comment] \
    --timeout [max_execution_time] \
    --exclusive \
    --nodes [node_number] \
    --cpus-per-task [cpu_number] \
    --wrap [command]

# Example
sbatch \
    --comment "feicheng" \
    --timeout 60000 \
    --exclusive \
    --nodes 32 \
    --cpus-per-task 128
    --wrap "./run_inference_demo.sh"
```

## Show Tasks Scheduled in Queue

```shell
squeue
```

## Cancel a Task in Queue

```shell
scancel [task_id]
```
