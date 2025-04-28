# 🛡️ MY_WHEEli_NOTES.md

## 📅 Build-Info
- Build Datum: 2025-04-28
- Build Maschine: horscht-X670E-AORUS-XTREME
- ROCm Version: 6.2 Nightly
- Python Version: 3.12.7
- CMake Version: 4.0.0
- HIP Compiler: hipcc (clang-17 alias)

## ⚙️ Build Schritte
1. ROCm Environment gesetzt (ROCM_PATH, HIP_PATH, etc.)
2. git clean -xfd
3. Externer Build-Ordner `~/build-fame-pytorch/pytorch-build`
4. cmake .. -DCMAKE_CXX_COMPILER=hipcc
5. make -j$(nproc)
6. python3 setup.py bdist_wheel
7. pip install dist/*.whl

## 📦 Wheel Datei
- Name: torch-2.8.0a0+gitc402b3b-py3.12-linux-x86_64.whl
- Speicherort: ~/build-fame-pytorch/pytorch/dist/

## 🔥 Wichtig:
- Nicht `git clean -xfd` ausführen ohne vorher `/dist/` zu sichern!
- Vor jedem Build `build_torch.sh` neu starten
- Immer ROCm-Variablen setzen

## 🎯 Direkter Nutzen
- Volle PyTorch GPU Power auf AMD ROCm mit RX 7900 XTX
- Eigene Kontrolle über Build-Optionen
- Unabhängig von NVIDIA CUDA-Ökosystem

## ✨ Indirekter Nutzen
- ROCm-Umgebungen verstehen
- Fehlerquellen systematisch lösen
- Reverse Engineering & eigenes Research-Fundament

# 🏆 Projekt-Name: Fame PyTorch ROCm Build
