🔥 Fame PyTorch ROCm Build Notes
Stand: April 2025

📦 Umgebung

Komponente	Version
Betriebssystem	Ubuntu 24.10 (6.11 Kernel)
Python	3.12.7 (venv: rocm_env)
Compiler	gcc/g++ 14.2.0
CMake	4.0.0
Ninja	installed (lokal via pip)
ROCm	6.2 Nightly (gfx1100 support)
micro	als Editor (micro)
🔥 Relevante Einstellungen

Variable	Wert
USE_ROCM	1 (aktiviert)
USE_CUDA	0 (deaktiviert)
CMAKE_ARGS	-DROCM_ARCH=gfx1100
USE_NUMPY	1 (aktiviert)
USE_NCCL	0 (abgeschaltet, no clone)
USE_MKL	0 (no Intel MKL)
USE_BLAS	0 (Fallback Eigen)
USE_OPENMP	1 (aktiv)
USE_MPI	0 (kein MPI)
USE_MAGMA	0 (kein MAGMA)
🔨 Submodule Handling
Submodules nicht vollständig geclont (manuelle Rescue: SSH Clone von wichtigsten Modulen).

Einige Submodules wurden bewusst ignoriert (DCGM, civetweb, manche TensorPipe-Tiefmodule).

Keine Abhängigkeit mehr von rekursivem HTTPS/SSH Git beim Build.

PeachPy Submodule (NNPACK) braucht six (manuell installiert: pip install six).

🗃️ Probleme, die gefixt wurden

Problem	Lösung
Git Submodule SSH/HTTPS-Konflikte	Global Patch auf git@github.com:
NCCL Zwangs-Clone	checkout_nccl() Funktion disabled
PeachPy Dependency (six) fehlt	pip install six
BLAS fallback auf Eigen	automatisch von Build erkannt
📌 Tarballs / Snapshots

Backup	Status
fame-pytorch-full-backup.tar.gz	Erstellt
🏁 Status
python setup.py bdist_wheel läuft aktiv.

Erwartete Build-Dauer: 60–120 Minuten (abhängig von CPU/GPU).

Wheel wird erzeugt:
/home/horscht/build-fame-pytorch/pytorch/dist/torch-2.8.0a0+gitc402b3b-*.whl
