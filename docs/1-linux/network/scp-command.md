# `scp` - Command

## Sync a File to Remote Host

```shell
# Command
scp -i [key_filepath] [local_filepath] [remote_host]:[remote_filepath]

# Example
scp -i ~/.ssh/key.pem ~/file.txt $trn1:~/
```

## Sync a Folder to Remote Host

```shell
# Command
scp -i [key_filepath] -r [local_filepath] [remote_host]:[remote_filepath]

# Example
scp -i ~/.ssh/key.pem -r ~/folder $trn1:~/
```
