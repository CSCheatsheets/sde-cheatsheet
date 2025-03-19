# `realpath` - Command

Show the absolute resolved path of a file or folder.

```shell
# Command 1: Print the absolute path to the current directory.
realpath
# or
realpath .

# Output 1
/Users/feicheng/1-RAM/1-CodingProjects/all-cheatsheets/mle-cheatsheet

# Command 2: Print the absolute path to the specified folder.
realpath .git

# Output 2
/Users/feicheng/1-RAM/1-CodingProjects/all-cheatsheets/mle-cheatsheet/.git

# Command 3: Print the absolute path to the specified file.
realpath .gitignore

# Output 3
/Users/feicheng/1-RAM/1-CodingProjects/all-cheatsheets/mle-cheatsheet/.gitignore
```

## Diffrences from `pwd`

| Differences                                              | `realpath` | `pwd` |
| :------------------------------------------------------- | :--------- | :---- |
| Work with current directory?                             | Yes        | Yes   |
| Work with other folders?                                 | Yes        | No    |
| Work with files?                                         | Yes        | No    |
| Can specify a file or folder?                            | Yes        | No    |
| Can resolve the symbolic link to the absolute real path? | Yes        | No    |
