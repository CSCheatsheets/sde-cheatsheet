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
