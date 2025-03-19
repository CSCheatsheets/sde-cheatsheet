# `aws` - Command

`aws` is a CLI to control access to AWS accounts. Its configuration file is
located at `~/.aws/config`.

## Print AWS Account Identity

Print the identity information of the current AWS account.

```shell
# Command
aws profile [profile_name] sts get-caller-identity

# Example
aws profile user1 sts get-caller-identity
```

## Get Access to a New AWS Account

Configure the terminal to get access to a new AWS account.

**Step 1**: Add the AWS account information to `~/.aws/config`.

```conf
# Syntax
[profile [profile_alias]]
region = [region_alias]
credential_process = ada credentials print --account [account_id] --role [role_type]

# Example
[profile user1]
region = us-west-2
credential_process = ada credentials print --account 1234567 --role Admin
```

**Step 2**: Change the default AWS profile.

```shell
export AWS_PROFILE=user1
```

## Login to an AWS Account

```shell
# Command
aws ecr get-login-password --region [region_alias] \
    | docker login \
        --username AWS \
        --password-stdin [isengard_account_name].dkr.ecr.[region_alias].amazonaws.com

# Example
aws ecr get-login-password --region us-west-2 \
    | docker login \
        --username AWS \
        --password-stdin 1234567.dkr.ecr.us-west-2.amazonaws.com
```

## Upload Files to AWS S3

Upload files or directories to an AWS S3 account.

```shell
# Command 1: Upload a file to AWS S3.
aws s3 cp [path_to_file] [s3_url]

# Example 1
aws s3 cp ./model-data.tar s3://user1/model-dir/

# Command 2: Upload a directory to AWS S3.
aws s3 cp --recursive [path_to_directory] [s3_url]

# Example 2
aws s3 cp --recursive ./model-data s3://user1/model-dir/
```
