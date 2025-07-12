# README

## 🛠 Setup

Run the `init_repo.sh` script:

```bash
./init_repo.sh
```
> ⚠️ **Note:** If your machine does not have GPU run `init_repo_no_cuda.sh` instead 


This script will:

- Install required libraries, including **cuDNN** (not preinstalled on SageMaker machines)
- Download deepfake models
- Install [uv](https://github.com/astral-sh/uv) (a dependency manager)
- Create a virtual environment with uv
- Install all Python dependencies

> ⚠️ **Note:** SageMaker machines erase system-level dependencies when shut down.  
> You’ll need to re-run `init_repo.sh` each time you restart the instance.  
> Steps like creating the virtual environment will be skipped if already present.

From a Jupyter notebook, you can select the Python environment located in `.venv` (Python 3.10.18).  
If you don’t see it listed, try refreshing the notebook interface.

---

## 📦 Managing Dependencies

You can update dependencies using either of the following methods:

### ✅ Option 1: Use `uv` (recommended)

- **Add a dependency:**

  ```bash
  uv add <package-name>
  ```

- **Remove a dependency:**

  ```bash
  uv remove <package-name>
  ```

This automatically updates both `pyproject.toml` and `uv.lock`.

### 📝 Option 2: Manual Edit

- Edit the `[dependencies]` section in `pyproject.toml`
- Then run:

  ```bash
  uv sync
  ```

📌 **Reminder:** Always commit changes to `uv.lock` when modifying dependencies.
