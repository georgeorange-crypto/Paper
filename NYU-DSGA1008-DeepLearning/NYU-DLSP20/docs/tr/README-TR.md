# NYU Deep Learning Spring 2020 (NYU-DLSP20) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Atcold/NYU-DLSP20/master)

<!-- This notebook repository now has a [companion website](https://atcold.github.io/NYU-DLSP20/), where all the course material can be found in video and textual format.
-->

Bu kurs deposunun materyallerini yazılı ve video halinde bulabileceğiniz [ilgili site](https://atcold.github.io/NYU-DLSP20/tr).


<!-- English - Mandarin - Korean - Spanish - Italian - Turkish - Japanese - Arabic - French - Farsi - Russian - Vietnamese - Serbian - Portuguese - Bengali - Hungarian -->
[🇬🇧](https://github.com/Atcold/NYU-DLSP20/blob/master/README.md) &nbsp; [🇨🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/zh/README-ZH.md) &nbsp; [🇰🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ko/README-KO.md) &nbsp; [🇪🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/es/README-ES.md) &nbsp; [🇮🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/it/README-IT.md) &nbsp; [🇹🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/tr/README-TR.md) &nbsp; [🇯🇵](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ja/README-JA.md) &nbsp; [🇸🇦](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ar/README-AR.md) &nbsp; [🇫🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fr/README-FR.md) &nbsp; [🇮🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fa/README-FA.md) &nbsp; [🇷🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ru/README-RU.md) &nbsp; [🇻🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/vi/README-VI.md) &nbsp; [🇷🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/sr/README-SR.md) &nbsp; [🇵🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/pt/README-PT.md) &nbsp; [🇧🇩](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/bn/README-BN.md) &nbsp; [🇭🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/hu/README-HU.md)


<!-- Getting started-->
# Başlarken

<!-- To be able to follow the exercises, you are going to need a laptop with Miniconda (a minimal version of Anaconda) and several Python packages installed.
The following instruction would work as is for Mac or Ubuntu Linux users, Windows users would need to install and work in the [Git BASH](https://gitforwindows.org/) terminal.
-->
Alıştırmaları takip edebilmek için Miniconda (Anaconda'nın asgari versiyonu) ve birkaç Python paketi kurulu bir bilgisayara ihtiyacınız olacak.
Aşağıdaki yönergeler Mac veya Ubuntu Linux kullancıları için geçerlidir. Windows kullanıcılarının [Git BASH](https://gitforwindows.org/) kullanması gerekli.

<!-- Download and install Miniconda
-->
## Miniconda'nın indirilmesi ve yüklenmesi

<!-- Please go to the [Anaconda website](https://conda.io/miniconda.html).
Download and install *the latest* Miniconda version for *Python* $\geq$ 3.7 for your operating system.
-->
[Anaconda](https://conda.io/miniconda.html)'nın sitesine giderek işletim sisteminiz için uygun olan *en güncel* *Python* $\geq$ 3.7 Miniconda versiyonunu indirip kurun.


```bash
wget <http:// link to miniconda>
sh <miniconda*.sh>
```

<!-- Check-out the git repository with the exercise
-->
## Alıştırma içeren git deposuna göz atın

<!-- Once Miniconda is ready, checkout the course repository and proceed with setting up the environment:
-->
Miniconda hazır olduğunda kurs deposuna göz atın ve ortamın kurulması ile devam edin.

```bash
git clone https://github.com/Atcold/NYU-DLSP20
```

<!-- Create isolated Miniconda environment
-->
## İzole bir Miniconda ortamı oluşturun

<!-- Change directory (`cd`) into the course folder, then type:
-->
Kurs dizinine gelin (`cd`) daha sonra aşağıdakini yazın:

```bash
# cd NYU-DLSP20
conda env create -f environment.yml
source activate NYU-DL
```

<!-- Start Jupyter Notebook or JupyterLab
-->
## Jupyter Notebook'u veya JupyerLab'ı başlatın

<!-- Start from terminal as usual:
-->
Her zamanki gibi terminalden başlatın:

```bash
jupyter lab
```

<!-- Or, for the classic interface:
-->
Ya da klasik arayüzden:

```bash
jupyter notebook
```

<!-- Notebooks visualisation
-->
## Defterlerin görüntülenmesi

<!-- *Jupyter Notebooks* are used throughout these lectures for interactive data exploration and visualisation.
-->
*Jupyter Notebooks* dersler boyunca interaktif bir biçimde verilerin incelenmesinde ve görselleştirilmesinde kullanıldı.

<!-- We use dark styles for both *GitHub* and *Jupyter Notebook*.
You should try to do the same, or they will look ugly.
JupyterLab has a built-in selectable dark theme, so you only need to install something if you want to use the classic notebook interface.
To see the content appropriately in the classic interface install the following:
-->
*GitHub* ve *Jupyter Notebook* için koyu tema kullanıyoruz.
Eğer çirkin görünmelerini istemiyorsan sen de öyle kullanmalısın.
JupyterLab'ın seçilebilir hazır bir koyu teması bulunuyor eğer klasik defter arayüzü kullanmak istiyorsan bir şey yüklemen gerekiyor.

İçeriği klasik arayüzde düzgün bir şekilde görüntülemek istiyorsan aşağıdakileri yükle:

<!--  - [*Jupyter Notebook* dark theme](https://userstyles.org/styles/153443/jupyter-notebook-dark);
 - [*GitHub* dark theme](https://userstyles.org/styles/37035/github-dark) and comment out the `invert #fff to #181818` code block.
-->
 - [*Jupyter Notebook* koyu tema](https://userstyles.org/styles/153443/jupyter-notebook-dark);
 - [*GitHub* koyu tema](https://userstyles.org/styles/37035/github-dark) `invert #fff to #181818`ve bu kod bloğunu yorum satırından çıkar.



