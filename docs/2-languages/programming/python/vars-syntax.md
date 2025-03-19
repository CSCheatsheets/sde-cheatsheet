# `vars` - Syntax

`vars()` is a Python built-in function to either access local variables or access
the `__dict__` attribute of a Python module, class, or instance.

## Access Local Variables

When given no arguments, `vars()` is similar to `locals()` which accesses local
variables of the current module, class, or instance.

Syntax 1: Print local variables of a module.

```python
# File name: main.py

if __name__ == "__main__":
    print(vars())
```

Output 1

```text
# Outputs are attributes of the current module.

{
    '__name__': '__main__',
    '__doc__': None,
    '__package__': None, 
    '__loader__': <class '_frozen_importlib.BuiltinImporter'>, 
    '__spec__': None,
    '__annotations__': {},
    '__builtins__': <module 'builtins' (built-in)>
}
```

Syntax 2: Print local variables of a class.

```python
class MyClass:
    def __init__(self):
        self.str1 = "str1"
        self.str2 = "str2"

    def __repr__(self):
        return "This is MyClass."

    def call_locals(self):
        num = 1
        return locals()

    def call_vars(self):
        num = 2
        return vars()


obj = MyClass()
print(obj.call_locals())
print(obj.call_vars())
```

Output 2

```text
# Outputs of `obj.call_locals()`.
{
    "self": "This is MyClass.",
    "num": 1,
}

# Outputs of `obj.call_vars()`.
{
    "self": "This is MyClass.",
    "num": 2,
}
```

## Access `__dict__` Attributes

When given a class or an instance as the argument, `vars()` accesses the
`__dict__` attribute of the module, class, or instance.

Syntax

```python
class MyClass:
    def __init__(self):
        self.str1 = "str1"
        self.str2 = "str2"


obj = MyClass()
print(vars(obj))
```

Output

```text
{
    "str1": "str1",
    "str2": "str2",
}
```

[`reference`](https://www.geeksforgeeks.org/vars-function-python/)
