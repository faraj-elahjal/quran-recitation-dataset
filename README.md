# Quran Recitation Dataset — Surah Al-Mutaffifin 1–3 (Qalun, Libya)
# قاعدة بيانات تلاوة سورة المطففين ١–٣ (رواية قالون، ليبيا)

تسجيلات صوتية لقرّاء ليبيين يتلون الآيات الثلاث الأولى من سورة المطففين برواية قالون عن نافع، جُمعت لبناء نماذج ذكاء اصطناعي تكشف أخطاء التجويد آليًا.

Audio recordings of Libyan reciters reading the first three verses of Surah Al-Mutaffifin in the **Qalun ʿan Nafiʿ** reading, collected to build AI models that detect Tajweed errors automatically.

> ﴿وَيْلٌ لِّلْمُطَفِّفِينَ ۝ الَّذِينَ إِذَا اكْتَالُوا عَلَى النَّاسِ يَسْتَوْفُونَ ۝ وَإِذَا كَالُوهُمْ أَو وَّزَنُوهُمْ يُخْسِرُونَ﴾

---

## 📊 Overview | نظرة عامة

| | |
|---|---|
| Reciters · القرّاء | ~324 ordinary (non-professional) reciters · قرّاء عاديون غير متخصصين |
| Recordings · التسجيلات | ~1,500 clips, ~6–7 hours · حوالي 1500 مقطع، 6–7 ساعات |
| Reading · الرواية | Qalun ʿan Nafiʿ · قالون عن نافع |
| Errors · الأخطاء | Natural, not staged · أخطاء طبيعية غير متعمّدة |
| Clip length · طول المقطع | roughly 10–25 s |

## 🎯 Why these verses? | لماذا هذه الآيات؟

The three verses are short but contain several core **Tajweed rules** (أحكام التجويد), which makes them suitable for training and evaluating error-detection models:

| Rule · الحكم | Example · مثال |
|---|---|
| Natural madd · المد الطبيعي | across the verses · في مواضع كثيرة |
| Madd ʿarid lil-sukun · المد العارض للسكون | يَسْتَوْفُونَ ، يُخْسِرُونَ (عند الوقف) |
| Idgham of identical letters · إدغام المثلين | أَو وَّزَنُوهُمْ |
| Idgham without ghunnah · الإدغام بغير غنة | وَيْلٌ لِّلْمُطَفِّفِينَ |
| Tafkhim · التفخيم | يُخْسِرُونَ |

---

## 📁 Structure | هيكل المستودع

```
quran-recitation-dataset - all/   original files as received (m4a, aac, ogg, wav, wma)
                                  الملفات الأصلية كما وصلت
quran-recitation-datase -w/       converted to WAV  ·  النسخة المحوّلة إلى WAV
push_audio_chunks.sh              upload helper script
```

**File naming · تسمية الملفات:** `<reciter>-<take>.<ext>` — e.g. `10-3.wav` is reciter 10, recording 3.
`10-3.wav` = القارئ رقم 10، التسجيل رقم 3.

Notes · ملاحظات:
- Formats and loudness vary between recordings (phone recordings, mostly 48 kHz m4a or 16 kHz wav). Resample to 16 kHz mono and normalise loudness before training.
  الصيغ ومستوى الصوت مختلفة بين التسجيلات، ويُنصح بتوحيدها (16kHz أحادي) قبل التدريب.
- 10 `.wma` files in the WAV folder are not converted yet.
  يوجد 10 ملفات wma في مجلد WAV لم تُحوَّل بعد.
- When splitting into train/test, **split by reciter** so the same voice never appears in both.
  عند تقسيم البيانات يجب التقسيم حسب القارئ حتى لا يظهر نفس الصوت في التدريب والاختبار.

## 📝 Annotations | التقييمات

Each recording is being rated by a qualified Quran teacher for the five rules above (correct / incorrect per rule). The annotation files will be added to this repository when complete.

يُقيَّم كل تسجيل من قِبل مصحح متخصص في الأحكام الخمسة أعلاه (صحيح / خطأ لكل حكم)، وستُضاف ملفات التقييم إلى المستودع عند اكتمالها.

---

## 📜 License | الترخيص

**Permission:** Researchers may use this dataset to train AI models, study pronunciation and Tajweed, or conduct academic research. Redistribution is allowed with attribution.

**Disclaimer:** The dataset providers accept no legal liability arising from its use. Users are responsible for complying with applicable laws and ethical guidelines.

**الإذن:** يُسمح للباحثين باستخدام هذه البيانات لتدريب نماذج الذكاء الاصطناعي ودراسة النطق والتجويد والبحث الأكاديمي، ويُسمح بإعادة نشرها مع نسبتها لمصدرها.

**إخلاء المسؤولية:** لا يتحمل مقدمو البيانات أي مسؤولية قانونية ناتجة عن استخدامها، ويتحمل المستخدم مسؤولية الالتزام بالقوانين والضوابط الأخلاقية.

## 📌 Citation | الاستشهاد

If you use this dataset, please cite this repository:
`Elahjal, F. Quran Recitation Dataset — Surah Al-Mutaffifin 1–3 (Qalun, Libya). GitHub: faraj-elahjal/quran-recitation-dataset`

---

🕌 **Please respect the sanctity of the Holy Quran when using this data.**
**يُرجى احترام قدسية القرآن الكريم عند استخدام هذه البيانات.**
