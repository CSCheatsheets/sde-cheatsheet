# `git push` - Command Bug

## Missing or Invalid Credentials

**Error Message**:

```text
Missing or invalid credentials.
Error: connect ECONNREFUSED /run/user/29061454/vscode-git-ec30ab1776.sock
    at PipeConnectWrap.afterConnect [as oncomplete] (node:net:1611:16) {
  errno: -111,
  code: 'ECONNREFUSED',
  syscall: 'connect',
  address: '/run/user/29061454/vscode-git-ec30ab1776.sock'
}
Missing or invalid credentials.
Error: connect ECONNREFUSED /run/user/29061454/vscode-git-ec30ab1776.sock
    at PipeConnectWrap.afterConnect [as oncomplete] (node:net:1611:16) {
  errno: -111,
  code: 'ECONNREFUSED',
  syscall: 'connect',
  address: '/run/user/29061454/vscode-git-ec30ab1776.sock'
}
```

**Solution**: Restart the IDE.
