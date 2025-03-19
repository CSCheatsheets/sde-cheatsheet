# `git config` - Command

## Show Git Config

Show git configurations.

```shell
# Command 1: Show all the git configurations, both local (`./.git/config`), user-global
# (`~/.gitconfig`), and system-global (`/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig`).
git config --list

# Output 1
# credential.helper=osxkeychain
# init.defaultbranch=main
# user.name=global-name
# user.email=global-email
# core.repositoryformatversion=0
# core.filemode=true
# core.bare=false
# core.logallrefupdates=true
# core.ignorecase=true
# core.precomposeunicode=true
# remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# branch.main.remote=origin
# branch.main.merge=refs/heads/main
# branch.main.vscode-merge-base=origin/main
# branch.main.vscode-merge-base=origin/main
# user.name=local-name
# user.email=local-email

# Command 2: Show git configurations in the local git repo (`./.git/config`).
git config --list --local

# Output 2
# core.repositoryformatversion=0
# core.filemode=true
# core.bare=false
# core.logallrefupdates=true
# core.ignorecase=true
# core.precomposeunicode=true
# remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# branch.main.remote=origin
# branch.main.merge=refs/heads/main
# branch.main.vscode-merge-base=origin/main
# branch.main.vscode-merge-base=origin/main
# user.name=local-name
# user.email=local-email

# Command 3: Show git configurations in the global git configuration file (`~/.gitconfig`).
git config --list --global

# Output 3
# user.name=global-name
# user.email=global-email

# Command 4: Show origins (path to configuration files) of git configurations.
git config --list --show-origin

# Output 4
# file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   credential.helper=osxkeychain
# file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   init.defaultbranch=main
# file:/Users/feicheng/.gitconfig user.name=global-name
# file:/Users/feicheng/.gitconfig user.email=global-email
# file:.git/config        core.repositoryformatversion=0
# file:.git/config        core.filemode=true
# file:.git/config        core.bare=false
# file:.git/config        core.logallrefupdates=true
# file:.git/config        core.ignorecase=true
# file:.git/config        core.precomposeunicode=true
# file:.git/config        remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# file:.git/config        branch.main.remote=origin
# file:.git/config        branch.main.merge=refs/heads/main
# file:.git/config        branch.main.vscode-merge-base=origin/main
# file:.git/config        branch.main.vscode-merge-base=origin/main
# file:.git/config        user.name=local-name
# file:.git/config        user.email=local-email
```

## Set Git Config

Set git configurations.

```shell
# Command 1: Set local user name.
git config user.name local-name

# Command 2: Set local user email.
git config user.email local-email

# Command 3: Set global user name.
git config --global user.name global-name

# Command 4: Set global user email.
git config --global user.email global-email
```
