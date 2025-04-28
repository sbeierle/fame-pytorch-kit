#!/bin/bash
# === Fame Kit Install Script ===

set -e

echo "🚀 Setting up ROCm environment (again, safe side)..."
export ROCM_PATH=/opt/rocm
export HIP_PATH=/opt/rocm
export PATH=$ROCM_PATH/bin:$ROCM_PATH/llvm/bin:$PATH
export LD_LIBRARY_PATH=$ROCM_PATH/lib:$ROCM_PATH/lib64:$LD_LIBRARY_PATH
export CMAKE_PREFIX_PATH=$ROCM_PATH

echo "📦 Building PyTorch Wheel..."
cd ~/build-fame-pytorch/pytorch
export USE_ROCM=1
export USE_CUDA=0
export CMAKE_ARGS="-DROCM_ARCH=gfx1100"

python3 setup.py bdist_wheel

echo "📂 Installing Wheel..."
pip install dist/*.whl

echo "✅ Installation successful!"
