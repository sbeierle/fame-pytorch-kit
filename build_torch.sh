#!/bin/bash
# === Fame Kit Build Script ===
# (c) by Horscht & Bro 2025

set -e

echo "🚀 Setting up ROCm environment..."
export ROCM_PATH=/opt/rocm
export HIP_PATH=/opt/rocm
export PATH=$ROCM_PATH/bin:$ROCM_PATH/llvm/bin:$PATH
export LD_LIBRARY_PATH=$ROCM_PATH/lib:$ROCM_PATH/lib64:$LD_LIBRARY_PATH
export CMAKE_PREFIX_PATH=$ROCM_PATH

echo "🧹 Cleaning previous build..."
cd ~/build-fame-pytorch/pytorch
git clean -xfd

echo "📂 Preparing build directory..."
cd ~/build-fame-pytorch
rm -rf pytorch-build
mkdir pytorch-build
cd pytorch-build

echo "⚙️ Configuring CMake..."
cmake ../pytorch -DCMAKE_CXX_COMPILER=hipcc -DCMAKE_CXX_FLAGS="--rocm-path=/opt/rocm"

echo "🔨 Building PyTorch (this will take ~90 min)..."
make -j$(nproc)

echo "✅ Build completed successfully!"
