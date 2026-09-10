# NYU Deep Learning Spring 2020 (NYU-DLSP20) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Atcold/NYU-DLSP20/master)


<span dir="rtl" align="right">

<!-- English - Mandarin - Korean - Spanish - Italian - Turkish - Japanese - Arabic - French - Farsi - Russian - Vietnamese - Serbian - Portuguese - Bengali - Hungarian -->
[🇬🇧](https://github.com/Atcold/NYU-DLSP20/blob/master/README.md) &nbsp; [🇨🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/zh/README-ZH.md) &nbsp; [🇰🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ko/README-KO.md) &nbsp; [🇪🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/es/README-ES.md) &nbsp; [🇮🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/it/README-IT.md) &nbsp; [🇹🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/tr/README-TR.md) &nbsp; [🇯🇵](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ja/README-JA.md) &nbsp; [🇸🇦](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ar/README-AR.md) &nbsp; [🇫🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fr/README-FR.md) &nbsp; [🇮🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fa/README-FA.md) &nbsp; [🇷🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ru/README-RU.md) &nbsp; [🇻🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/vi/README-VI.md) &nbsp; [🇷🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/sr/README-SR.md) &nbsp; [🇵🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/pt/README-PT.md) &nbsp; [🇧🇩](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/bn/README-BN.md) &nbsp; [🇭🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/hu/README-HU.md)


# شروع
برای اینکه بتوانید تمرین ها را دنبال کنید به یک لپ تاپ با Miniconda (نسخه حداقلی Anaconda) نیاز دارید. راهنمایی که در ادامه می آید برای کاربران مک و اوبونتو کار می کند. کاربران ویندوز نیاز به نصب و اجرای دستورات در ترمینال [Git BASH](https://gitforwindows.org/)  دارند.


##   دانلود و نصب Miniconda
لطفا به وبسایت [Anaconda](https://conda.io/miniconda.html) بروید و آخرین نسخه Miniconda برای پایتون >3.7 مخصوص سیستم عامل خود را دانلود و سپس نصب کنید.

```bash
wget <http:// link to miniconda>
sh <miniconda*.sh>
```


## بررسی مخزن گیت حاوی تمرین ها:
وقتی Miniconda آماده شد، مخزن این دوره را بررسی کنید و محیط کار را تنظیم کنید:

```bash
git clone https://github.com/Atcold/NYU-DLSP20
```


## ساخت محیط ایزوله Miniconda
مسیر جاری را به پوشه این دوره تغییر دهید و سپس تایپ کنید:

```bash
# cd NYU-DLSP20
conda env create -f environment.yml
source activate NYU-DL
```


## جوپیتر نوت بوک یا جوپیترلب را اجرا کنید
به طور معمول از ترمینال اجرا کنید:

```bash
jupyter lab
```
یا برای رابط کلاسیک:

```bash
jupyter notebook
```


## مصور سازی نوت بوک ها
جوپیتر نوت بوک ها در طول ارائه ها برای اکتشاف و مصور سازی داده ها به صورت تعاملی استفاده می شوند.


ما از استایل تیره برای گیت هاب و جوپیتر نوت بوک استفاده می کنیم. پیشنهاد می شود شما نیز همین کار را انجام دهید تا ظاهر مناسبی را تجربه کنید. جوپیترلب همراه خود تم تیره دارد، بنابراین تنها در صورتی که مایل هستید از رابط نوت بوک کلاسیک استفاده کنید باید چیز دیگری نصب کنید. برای مشاهده مناسب محتویات در رابط کلاسیک موارد زیر را نصب کنید:


 - [*Jupyter Notebook* dark theme](https://userstyles.org/styles/153443/jupyter-notebook-dark)
 - [*GitHub* dark theme](https://userstyles.org/styles/37035/github-dark) کد `invert #fff to #181818` را کامنت کنید.

 </span>
