# `tee` - Command

## Redirect Console Outputs to a File By Overwriting

```shell
# Command
[command] | tee [output_filename]

# Example
cat file.txt | tee out.log
```

## Redirect Console Outputs to a File By Appending

```shell
# Command
[command] | tee -a [output_filename]

# Example
cat file.txt | tee -a out.log
```

## Redirect `stdout` and `stderr` Separately

```shell
# Command
[command] > >(tee [stdout_filename]) 2> >(tee [stderr_filename] >&2)

# Example
./run_inference_demo.sh > >(tee stdout.log) 2> >(tee stderr.log >&2)
```

## Redirect `stdout` and `stderr` into the Same File

```shell
# Command 1
[command] 2>&1 | tee [out_filename]

# Example 1
./run_inference_demo.sh 2>&1 | tee out.log

# Command 2
[command] |& tee [out_filename]

# Example 2
./run_inference_demo.sh |& tee out.log
```
