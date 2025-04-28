# Fame PyTorch ROCm Kit 🔥

مُصمم بشجاعة. مُصمم ببراعة. مُصمم بشغف.

---

## 🚀 حول

يوفر هذا المشروع مجموعة بناء كاملة ومنظمة لتجميع نسخة PyTorch ROCm عاملة على وحدات معالجة الرسومات AMD - دون عناء استخدام وحدات ROCm أو HIP أو OpenMP أو Git الفرعية.

ستجد كل ما تحتاجه لبناء PyTorch وتثبيته واختباره من المصدر، مع إنشاء حزمة `.whl` صالحة لجهازك المحلي.

---

## 📋 هيكل المشروع

| ملف/مجلد | الغرض |
|:-----------|:--------|
| `build_torch.sh` | سكربت لبناء PyTorch من المصدر |
| `install_torch.sh` | سكربت تثبيت ملف Wheel المُولّد |
| `test_torch.sh` | سكربت لاختبار استيراد PyTorch وحالة ROCm |
| `fame_torch_freeze.txt` | تجميد البيئة (إصدارات الحزمة) |
| `pytorch-wheel/` | (اختياري) المجلد الذي يحتوي على ملف `.whl` |
| `MY_WHEELI_NOTES.md` | ملاحظات متعلقة ببناء Wheel |
| `PyTorch_ROCm_Build_Notes.md` | ملاحظات بناء ROCm الموسعة |
| `README.md` | هذه الوثيقة - الخطة الرئيسية لـ Fame |

---

## 🛠️ تعليمات البناء

1. **تفعيل بيئة ROCm**

```bash
source ~/rocm_env/bin/activate
```

2. **انتقل إلى مجلد المشروع**

```bash
cd fame-pytorch-kit/
```

3. **بناء PyTorch**

```bash
bash build_torch.sh
```

سيكون ملف `.whl` المُنشأ موجودًا في `pytorch/dist/`.

---

## 📦 تعليمات التثبيت

### تثبيت سريع

```bash
bash install_torch.sh
```

### تثبيت يدوي

```bash
cd pytorch/dist/
pip install torch-2.8.0a0+gitc402b3b-cp312-cp312-linux_x86_64.whl

```

تأكد من تفعيل بيئة بايثون (venv) لديك!

---

## ✅ تعليمات الاختبار

```bash
bash test_torch.sh
```

أو يدويًا:

```bash
python -c "import torch; print(torch.cuda.is_available())"
python -c "import torch; print(torch.cuda.get_device_name(0))"
python -c "import torch; print(torch.version.hip)"
```

المتوقع: `True`، اسم وحدة معالجة الرسومات، سلسلة إصدار HIP.

---

## 📜 الترخيص

هذا المشروع مرخص بموجب ترخيص معهد ماساتشوستس للتكنولوجيا (MIT).

---

## 🤝 شكر وتقدير

مجموعة الشهرة مصممة بفخر من قِبل [sbeierle](https://github.com/sbeierle) بشجاعة 🛡️، وحماس 🔥، وشهرة 🚀.

---

# صُنعت بالنار. صُنعت بالشهرة. 🛡️🔥
# Fame PyTorch ROCm Kit 🔥
