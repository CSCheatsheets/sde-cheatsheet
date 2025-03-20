# `__future__` - Syntax

## Defer Type Hint Evaluation

```python
from __future__ import annotations

class Node:
    def __init__(self, next: Node=None):  # No need for a string
        self.next = next
```
