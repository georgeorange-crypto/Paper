---
layout: default
title: HỌC SÂU
author: Alfredo Canziani
lang-ref: home
lang: vi
translation-date: 16 Sep 2020
translator: Huynh Nguyen
---

**DS-GA 1008 · Học kỳ mùa xuân 2020 · [Trung tâm khoa học dữ liệu, NYU](http://cds.nyu.edu/)**

| Người hướng dẫn | Yann LeCun & Alfredo Canziani |
| Bài giảng    | Thứ hai 16:55 – 18:35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| Thực hành    | Thứ ba 19:10 – 20:00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| [PIAZZA](https://piazza.com/nyu/spring2020/dsga1008/home)      | Mã truy cập: `DLSP20` |
| Tài liệu    | [Google Drive](https://bitly.com/DLSP20), [Notebooks](https://github.com/Atcold/pytorch-Deep-Learning) |

## Mô tả khóa học

Khóa học này liên quan đến các kỹ thuật mới nhất trong học sâu (Deep learning) và học biểu diễn (Representation learning), nội dung tập trung vào học sâu có giám sát (Supervised learning) và không giám sát (Unsupervised learning), các phương pháp nhúng (Embedding methods), học số liệu (Metric learning), mạng tích chập (Convolutional) và lặp lại (recurrent nets), với các ứng dụng cho thị giác máy tính (Computer vision), hiểu ngôn ngữ tự nhiên (Natural language understanding) và nhận diện giọng nói (Speech recognition). Các điều kiện tiên quyết, bao gồm: Giới thiệu về khoa học dữ liệu ([DS-GA 1001](https://cds.nyu.edu/academics/ms-curriculum/)) hoặc các khóa học máy học cấp độ sau đại học.

## Bài giảng

**Chú giải**: 🖥 Slides, 📓 Jupyter notebook, 🎥 YouTube video.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>Tuần</th>
      <th align="left">Định dạng</th>
      <th align="left">Tiêu đề</th>
      <th align="left">Tài liệu tham khảo</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== WEEK 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week01/01">①</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week01/01-1">Lịch sử và cảm hứng</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week01/01-2">Sự phát triển và học sâu</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week01/01-3">Mạng thần kinh (NN)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week02/02">②</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week02/02-1">SGD và backprop</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week02/02-2">Backprop trong thực tế</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week02/02-3"> Huấn luyện mạng lưới thần kinh (Neural Networks)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week03/03">③</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week03/03-1">Biến đổi tham số</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week03/03-2">Mạng lưới tích chập (Convolutional Neural Networks)</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week03/03-3">Tín hiệu tự nhiên' properties</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="{{site.baseurl}}/vi/Week04/04">④</a></td>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week04/04-1">Tích chập 1D</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week05/05">⑤</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week05/05-1">Tối ưu hóa I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week05/05-2">Tối ưu hóa II</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week05/05-3">CNN, autograd</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week06/06">⑥</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week06/06-1">Ứng dụng của CNN</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week06/06-2">RNNs và sự chú ý</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week06/06-3">Huấn luyện RNNs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week07/07">⑦</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week07/07-1">Mô hình dựa trên năng lượng</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week07/07-2">SSL, EBM</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week07/07-3">Mã tự động (Autoencoders)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
        <a href="https://youtu.be/bggWQ14DD9M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week08/08">⑧</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week08/08-1">Các phương pháp phức hợp (Contrastive methods)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week08/08-2">Regularised latent</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week08/08-3">Huấn luyện VAEs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week09/09">⑨</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week09/09-1">Sparsity</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week09/09-2">Mô hình World, GANs</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week09/09-3">Huấn luyện GANs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week10/10">⑩</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week10/10-1">CV SSL I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week10/10-2">CV SSL II</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week10/10-3">Kiểm soát dự đoán (Predictive Control)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week11/11">⑪</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week11/11-1">Kích hoạt (Activations)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week11/11-2">Mất mát (Losses)</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week11/11-3">PPUU</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week12/12">⑫</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week12/12-1">Học sâu cho Xử lý ngôn ngữ tự nhiên I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
        <a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week12/12-2">Học sâu cho Xử lý ngôn ngữ tự nhiên II</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week12/12-3">Sự chú ý và chuyển đổi (Attention & transformer)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week13/13">⑬</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week13/13-1">GCNs I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week13/13-2">GCNs II</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week13/13-3">GCNs III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 14 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/vi/Week14/14">⑭</a></td>
      <td rowspan="2">Bài giảng</td>
      <td><a href="{{site.baseurl}}/vi/Week14/14-1">Cấu trúc dự đoán (Structured Prediction)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1qBu-2hYWaGYEXeX7kAU8O4S2RZ1hMjsk/">🖥️</a>
        <a href="https://youtu.be/gYayCG6YyO8">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/vi/Week14/14-2">Phương pháp đồ họa (Graphical methods)</a></td></tr>
    <tr>
      <td rowspan="1">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/Week14/14-3">Quy định hóa và Baysian (Regularisation and Bayesian)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/07%20-%20Regularisation.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/12-regularization.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/08%20-%20Bayesian%20NN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/13-bayesian_nn.ipynb">📓</a>
        <a href="https://youtu.be/DL7iew823c0">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 15 =============================== -->
    <tr>
      <td rowspan="2" align="center"><a href="{{site.baseurl}}/vi/week15/15">⑮</a></td>
      <td rowspan="2">Thực hành</td>
      <td><a href="{{site.baseurl}}/vi/week15/15-1">Suy luận cho biến tìm ẩn EBMs</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/sbhr2wjU1-I">🎥</a>
      </td>
    </tr>
    <tr>
      <td><a href="{{site.baseurl}}/vi/week15/15-2">Đào tạo biến tìm ẩn EBMs</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/XLSb1Cs1Jao">🎥</a>
      </td>
    </tr>
  </tbody>
</table>


## Giảng viên

| Vai trò | Ảnh | Liên lạc | Giới thiệu |
|:-----|:-----:|:--------|:------|
|Giảng viên|<img src="http://yann.lecun.com/ex/images/ylc-thumb.jpeg" width="100" height="100">|<a href="https://twitter.com/ylecun">Yann LeCun</a><br>yann@cs.nyu.edu|Giáo sư chính khoa Khoa học máy tính, NYU <br>và giành được giải thưởng Turing Award (2018)|
|Giảng viên|<img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100">|<a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br>canziani@nyu.edu|Trợ lý giáo sư của khoa Khoa học máy tính, NYU|
|Trợ giảng|<img src="../images/Mark.png" width="100" height="100">|<a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br>goldstein@nyu.edu|Sinh viên Tiến sĩ của khoa Khoa học máy tính, NYU|
|Quản trị Web|<img src="../images/Zeming.png" width="100" height="100">|<a href="https://twitter.com/ebetica">Zeming Lin</a><br>zl2799@nyu.edu|Sinh viên Tiến sĩ của khoa Khoa học máy tính, NYU|
