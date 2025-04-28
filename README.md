# Fame PyTorch ROCm Kit 🔥

Built with Courage. Built with Fire. Built with FAME.

---

## 🚀 About

This project provides a complete and clean build kit for compiling a working PyTorch ROCm version on AMD GPUs –  
without the usual headaches involving ROCm, HIP, OpenMP, or Git submodules.

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
