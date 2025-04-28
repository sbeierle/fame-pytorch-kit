# Fame PyTorch ROCm Kit – Installation Instructions 🚀

This file explains how to manually install the Fame-built PyTorch ROCm version.

---

## 🛠️ 1. Prepare Environment

Activate your Python environment (recommended: venv):

```bash
source ~/rocm_env/bin/activate
```

Install CMake if missing:

```bash
pip install cmake
```

Ensure HIP and ROCm paths are correctly set (`ROC_ENABLE_PRE_VEGA=1`, etc).

---

## 🛠️ 2. Build PyTorch

Navigate to the Fame Kit folder:

```bash
cd fame-pytorch-kit/
```

Run the build script:

```bash
bash build_torch.sh
```

---

## 📦 3. Install the Wheel

Navigate to the dist folder:

```bash
cd pytorch/dist/
```

Install the Wheel manually:

```bash
pip install torch-2.8.0a0+gitc402b3b-cp312-cp312-linux_x86_64.whl

```

---

## ✅ 4. Verify Installation

Test your installation:

```bash
python -c "import torch; print(torch.cuda.is_available())"
python -c "import torch; print(torch.cuda.get_device_name(0))"
python -c "import torch; print(torch.version.hip)"
```

You should see:
- `True` (GPU detected)
- Your GPU model name
- HIP version string

---

# Built with Fire. Built with Fame. 🛡️🔥
