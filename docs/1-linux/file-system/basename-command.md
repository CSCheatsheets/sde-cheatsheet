# `basename` - Command

Get the name of a file or a folder by removing its parent directory portion. It
must be followed by a path. It can only get the name statically from the given
path, it can't dynamically inspect the absolute path.

## Get File or Folder Name from a Given Path

Get the file or folder name the path, and the path doesn't necessarily need to
be an actual path existing in the file system.

```shell
# Command 1: Get the name of a file.
basename .gitignore

# Output 1
.gitignore

# Command 2: Get the name of a folder.
basename .git

# Output 2
.git

# Command 3: Get the name of the current work directory.
basename $(pwd)
# or
basename $(realpath)
# or
basename /Users/feicheng/1-RAM/1-CodingProjects/all-cheatsheets/mle-cheatsheet

# Output 3
mle-cheatsheet

# Command 4: Get the short relative name of the current work directory.
basename .

# Output 4
.
```

## Print the Given Text

```shell
# Command
basename not-a-file-or-directory

# Output
not-a-file-or-directory
```
