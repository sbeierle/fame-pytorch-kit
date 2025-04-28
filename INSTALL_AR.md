# Fame PyTorch ROCm Kit - تعليمات التثبيت 🚀

يشرح هذا الملف كيفية تثبيت إصدار Fame المُصمم من PyTorch ROCm يدويًا.

--

## 🛠️ 1. إعداد البيئة

فعّل بيئة بايثون (موصى به: venv):

```bash
source ~/rocm_env/bin/activate
```

ثبّت CMake في حال عدم توفره:

```bash
pip install cmake
```

تأكد من ضبط مسارات HIP وROCm بشكل صحيح (`ROC_ENABLE_PRE_VEGA=1`، إلخ).

---

## 🛠️ ٢. بناء PyTorch

انتقل إلى مجلد Fame Kit:

```bash
cd fame-pytorch-kit/
```

شغّل سكربت البناء:

```bash
bash build_torch.sh
```

---

## 📦 ٣. تثبيت Wheel

انتقل إلى مجلد dist:

```bash
cd pytorch/dist/
```

ثبّت Wheel يدويًا:

```bash
pip install torch-2.8.0a0+gitc402b3b-cp312-cp312-linux_x86_64.whl

```

---

## ✅ ٤. التحقق من التثبيت

اختبر التثبيت:

```bash
python -c "import torch; print(torch.cuda.is_available())"
python -c "import torch; print(torch.cuda.get_device_name(0))"
python -c "import torch; print(torch.version.hip)"
```

يجب أن يظهر لك:
- `True` (تم اكتشاف وحدة معالجة الرسومات)
- اسم طراز وحدة معالجة الرسومات لديك
- سلسلة إصدار HIP

---

# صُنع ببراعة. صُنع بشهرة. 🛡️🔥
