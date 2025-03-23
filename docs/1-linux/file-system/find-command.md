# `find` - Command

## Find the 10 Largest Files Recursively from the Root Directory

```shell
sudo find / -type f -exec du -h {} + | sort -rh | head -n 10

# sudo: Grant root user permission.
# find /: Search from the root directory.
# -type f: Search files only.
# -exec du -h {}: Execute `du -h` command which measures the disk utilization of
# files and displays in a human-readable format.
# sort -rh: Sort results in a human-readable format reversely.
# head -n 10: Display top 10 results only.
```
