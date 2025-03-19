# `markdownlint` - Syntax

## MD033: _no-inline-html_ - Inline HTML

Allow usage of specific HTML tags in markdown files.

**JSON Configuration File (`.json` / `.jsonc`)**

```json
"""
File name: `.markdownlint.json` / `.markdownlint.jsonc`.
"""

# Syntax: Allow usage of `<u></u>` in markdown files.
{
    "MD033": {"allowed_elements": ["u"]}
}
```
