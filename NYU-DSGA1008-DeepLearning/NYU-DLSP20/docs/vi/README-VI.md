# NYU Deep Learning Spring 2020 (NYU-DLSP20) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Atcold/NYU-DLSP20/master)

Notebook này hiện đang được phát hành tại [trang web](https://atcold.github.io/NYU-DLSP20/), nơi tất cả tài liệu của khóa học có thể được tìm thấy ở định dạng video hoặc văn bản.

<!-- English - Mandarin - Korean - Spanish - Italian - Turkish - Japanese - Arabic - French - Farsi - Russian - Vietnamese - Serbian - Portuguese - Bengali - Hungarian -->
[🇬🇧](https://github.com/Atcold/NYU-DLSP20/blob/master/README.md) &nbsp; [🇨🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/zh/README-ZH.md) &nbsp; [🇰🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ko/README-KO.md) &nbsp; [🇪🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/es/README-ES.md) &nbsp; [🇮🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/it/README-IT.md) &nbsp; [🇹🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/tr/README-TR.md) &nbsp; [🇯🇵](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ja/README-JA.md) &nbsp; [🇸🇦](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ar/README-AR.md) &nbsp; [🇫🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fr/README-FR.md) &nbsp; [🇮🇷](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/fa/README-FA.md) &nbsp; [🇷🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/ru/README-RU.md) &nbsp; [🇻🇳](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/vi/README-VI.md) &nbsp; [🇷🇸](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/sr/README-SR.md) &nbsp; [🇵🇹](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/pt/README-PT.md) &nbsp; [🇧🇩](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/bn/README-BN.md) &nbsp; [🇭🇺](https://github.com/Atcold/NYU-DLSP20/blob/master/docs/hu/README-HU.md)

# Bắt đầu

Để có thể làm theo các bài tập, bạn cần có máy tính xách tay được cài đặt Miniconda (phiên bản đơn giản của Anaconda) và một số gói thư viện của Python. Hướng dẫn sau đây dành cho những người dùng sử dụng Mac hoặc Ubuntu Linux, người dùng Window cần cài đặt và làm việc trong terminal [Git BASH](https://gitforwindows.org/).

## Tải và cài đặt Miniconda

Vui lòng truy cập [Anaconda website](https://conda.io/miniconda.html).
Tải xuống và cài đặt *phiên bản mới nhất* Miniconda cho *Python* $\geq$ 3.7 tương ứng với hệ điều hành của bạn.

```bash
wget <http:// liên kết đến trang web Miniconda>
sh <miniconda*.sh>
```


## Kiểm tra *kho git* với bài tập

Khi Miniconda đã sẵn sàng, hãy kiểm tra kho học liệu và tiến hành cài đặt môi trường:

```bash
git clone https://github.com/Atcold/NYU-DLSP20
```


## Tạo môi trường Miniconda riêng biệt

Thay đổi thư mục (`cd`) thành thư mục khoa học, sau đó gõ:

```bash
# cd NYU-DLSP20
conda env create -f environment.yml
source activate NYU-DL
```


## Khởi động Jupyter Notebook or JupyterLab

Bắt đầu từ terminal như thường lệ:

```bash
jupyter lab
```

Hoặc đối với giao diện truyền thống:

```bash
jupyter notebook
```


## Trực quan Notebooks

*Jupyter Notebooks* được sử dụng trong suốt bài giảng này để khám phá và trực quan hóa dữ liệu tương tác.

Chúng tôi sử dụng kiểu tối (dark style) cho cả *GitHub* và *Jypyter Notebooks*.
Bạn nên cố gắng làm đều tương tự, nếu không chúng sẽ trong xấu.
JupyterLab có thể chọn chủ đề tối (dark theme) được tích hợp sẵn, vì vậy bạn chỉ cần cài đặt thứ gì đó nếu muốn sử dụng giao diện Notebook truyền thống. Để xem nội dung phù hợp trong giao diện cổ điển, hãy cài đặt các bước sau:

 - [*Jupyter Notebook* dark theme](https://userstyles.org/styles/153443/jupyter-notebook-dark);
 - [*GitHub* dark theme](https://userstyles.org/styles/37035/github-dark) và nhập khối mã `invert #fff to #181818'.
