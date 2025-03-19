# `ssh` - Command

## Create a SSH Key Pair

```shell
ssh-keygen -t ed255i9 -C [email]
```

## Initialize a SSH Agent

```shell
eval "$(ssh-agent -s)"
```

## Add a SSH Private Key to the SSH Agent

```shell
ssh-add [private_key_filepath]
```

## Check SSH Connections

```shell
ssh -T git@github.com
```

## Permanently Add SSH Agents

```bash
"""
File name: ~/.bashrc
"""

# Linux
Host github.com
    AddKeysToAgent yes
    dentityFile ~/.ssh/id_ed25519_gh

# MacOS
Host github.com
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519_gh
```
