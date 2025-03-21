# File Name - Shortcut

## Display the Full Path of the File

```vim
:echo expand("%:p")
```

## Display the File Basic Name

```vim
# Shortcut 1
:echo @%

# Shortcut 2
:echo expand("%:t")
```

Another tricky way to display the file name is `:w`. Although this command is
initially intended for saving changes, but the complete file name will also be displayed.

## Display the Relative Path of the File

```vim
:echo expand("%")
```
