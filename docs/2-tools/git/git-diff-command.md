# `git diff` - Command

Check changes in files that are tracked by git but not yet staged.

Command

```shell
git diff
```

Example

```shell
git status  # Check current file changes
```

```text
On branch dev
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
    new file:   examples/offline_inference_pixtral_neuron.py
```

```shell
git diff
```

Output

```text
diff --git a/examples/offline_inference_pixtral_neuron.py b/examples/offline_inference_pixtral_neuron.py
new file mode 100644
index 00000000..07594b24
--- /dev/null
+++ b/examples/offline_inference_pixtral_neuron.py
@@ -0,0 +1,9 @@
+import os
+os.environ["VLLM_NEURON_FRAMEWORK"] = "neuronx-distributed-inference"
+
+from vllm import LLM, SamplingParams
+
+llm = LLM()
+
```
