# Redirection - Command

## Redirect Console Outputs to Overwrite a File

```shell
# Command
[some_command] > [file_name]

# Example
echo "Hello World!" > ./hello.txt
```

## Redirect Console Outputs to Append to a File

```shell
# Command
[some_command] >> [file_name]

# Example
echo "Hello World!" >> ./hello.txt
```

## Redirect `stdout` and `stderr` into Separate Files

```shell
foo > stdout.log 2> stderr.log
```

## Redirect `stdout` and `stderr` into One File

```shell
foo > stdout.log 2>&1
```
