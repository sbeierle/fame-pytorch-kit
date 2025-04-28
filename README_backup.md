
# Fame PyTorch ROCm Kit 🔥

Built with Courage. Built with Fire. Built with FAME.

---

## 🚀 About

This project provides a complete and clean build kit for compiling a working PyTorch ROCm version on AMD GPUs – without the usual headaches involving ROCm, HIP, OpenMP, or Git submodules.

You will find everything needed to build, install, and test PyTorch from source, generating a valid `.whl` package for your local machine.

---

## 📋 Project Structure

| File/Folder | Purpose |
|:------------|:--------|
| `build_torch.sh` | Script to build PyTorch from source |
| `install_torch.sh` | Script to install the generated Wheel file |
| `test_torch.sh` | Script to test PyTorch import and ROCm status |
| `fame_torch_freeze.txt` | Environment freeze (package versions) |
| `pytorch-wheel/` | (Optional) Folder containing the `.whl` file |
| `MY_WHEELI_NOTES.md` | Notes related to the Wheel build |
| `PyTorch_ROCm_Build_Notes.md` | Extended ROCm build notes |
| `README.md` | This document – the Fame Masterplan |

---

## 🛠️ Build Instructions

1. **Activate your ROCm environment**

```bash
source ~/rocm_env/bin/activate
```

2. **Navigate to the project folder**

```bash
cd fame-pytorch-kit/
```

3. **Build PyTorch**

```bash
bash build_torch.sh
```

The generated `.whl` file will be located in `pytorch/dist/`.

---

## 📦 Install Instructions

### Quick Install

```bash
bash install_torch.sh
```

### Manual Install

```bash
cd pytorch/dist/
pip install torch-2.8.0a0+gitc402b3b-cp312-cp312-linux_x86_64.whl

```

Make sure your Python environment (venv) is activated!

---

## ✅ Test Instructions

```bash
bash test_torch.sh
```

Or manually:

```bash
python -c "import torch; print(torch.cuda.is_available())"
python -c "import torch; print(torch.cuda.get_device_name(0))"
python -c "import torch; print(torch.version.hip)"
```

Expected: `True`, GPU Name, HIP version string.

---

## 📜 License

This project is licensed under the MIT License.

---

## 🤝 Credits

Fame Kit proudly built by [sbeierle](https://github.com/sbeierle) with 🛡️ Courage, 🔥 Fire, and 🚀 Fame.

---

# Built with Fire. Built with Fame. 🛡️🔥
=======
# fame-pytorch-kit

