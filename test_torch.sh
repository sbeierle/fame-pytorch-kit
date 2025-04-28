#!/bin/bash
# === Fame Kit Test Script ===

set -e

echo "🧪 Importing torch and checking ROCm support..."

python3 -c "
import torch
print('Torch Version:', torch.__version__)
print('CUDA available:', torch.cuda.is_available())
print('HIP version (ROCm):', getattr(torch.version, 'hip', 'N/A'))
print('Built with ROCm:', torch.version.hip is not None)
"

echo "✅ Test completed!"
