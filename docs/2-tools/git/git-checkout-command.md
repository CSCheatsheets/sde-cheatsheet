# `git checkout` - Command

## Create an Orphan Branch

Create an orphan branch with no commit histories and no contexts, which looks
like a clean new repository. It can be used as the main branch for the GitHub page.

```shell
# Command 1: Use `checkout` in older Git versions.
git checkout --orphan new-branch

# Example 1
git checkout --orphan new-branch
git rm -rf .  # Remove all the tracked files.
echo "Hello World!" > README.md
git add .
git commit -m "Initial commit"

# Command 2: Use `switch` in newer Git versions.
git switch --orphan new-branch
```
