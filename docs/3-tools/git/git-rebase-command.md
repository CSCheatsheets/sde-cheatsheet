# `git rebase` - Command

## Merge Multiple Commits

Rebase/Squash/Merge multiple commits.

**Step 1**: Use the `-i` option to open an interactive shell for editing commit
message, and specify the number of commits to merge.

```shell
# Command
git rebase -i HEAD~[number_of_commits]

# Example
git rebase -i HEAD~2
```

**Step 2**: In the interactive shell, change leading `pick` to `s` to squash
selected commits, while keeping the leading `pick` to choose the base commit.
Then save the change.

```text
pick 3ac3a7b Add steps in example formats in templates
pick 688e5d6 Add

# Change to ...

# Keep this commit as the base commit.
pick 3ac3a7b Add steps in example formats in templates
# Merge this commit into the base commit.
s 688e5d6 Add
```

**Step 3**: In the interactive shell, edit the message for merged commits.
