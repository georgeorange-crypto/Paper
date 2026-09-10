---
layout: default
title: DERIN ÖĞRENME
author: Alfredo Canziani
lang-ref: home
lang: tr
translation-date: 1 July 2020
translator: Murat Ekici
---

**DS-GA 1008 · BAHAR 2020 · [NYU CENTER FOR DATA SCIENCE](http://cds.nyu.edu/)**

| EĞİTMENLER    | Yann LeCun & Alfredo Canziani |
| DERS SAATLERİ | Pazartesi 16:55 – 18:35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| UYGULAMA      | Salı 19:10 – 20:00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| FORUMU        | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| MATERYALLER   | [Google Drive](https://bitly.com/DLSP20), [Notebooks](https://github.com/Atcold/pytorch-Deep-Learning) |


## Açıklama

Bu kurs, gözetimli ve gözetimsiz derin öğrenme, gömme yöntemleri, ölçev öğrenme (metric learning), evrişimsel(CNN, Convolutional Neural Network) ve özyineli ağlara (RNN, Recurrent Neural Network) odaklanarak derin öğrenme ve özniteliksel öğrenme alanındaki en yeni teknikleri ve bu tekniklerin  bilgisayarlı görü (computer vision), doğal dil anlama (natural language understanding) ve ses tanıma alanlarınlarındaki uygulamalarını konu almaktadır.
Önkoşullar:[DS-GA 1001 Veri Bilimine Giriş](https://cds.nyu.edu/academics/ms-curriculum/) ya da lisansüstü düzeyde makine öğrenmesi kursu.



## Dersler

**Lejant**: 🖥 sunum, 📓 Jupyter notebook, 🎥 YouTube videosu.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>Hafta</th>
      <th align="left">Format</th>
      <th align="left">Başlık</th>
      <th align="left">Kaynaklar</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== WEEK 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week01/01">①</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week01/01-1">Tarih ve motivasyon</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week01/01-2"> Derin Öğrenme (DL, Deep Learning) ve evrimi</a></td></tr>
    <tr>
      <td rowspan="1">Pratica</td>
      <td><a href="{{site.baseurl}}/tr/week01/01-3">Sinir Ağı (NN, Neural Network)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week02/02">②</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week02/02-1">Rasgele Gradyan İnişi(SGD, Stochastic Gradient Descent) ve geri yayılım (Backpropagation)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week02/02-2">Uygulamada geri yayılım</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week02/02-3">Sinir ağı eğitimi</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week03/03">③</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week03/03-1">Parametre dönüşümü</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week03/03-2">Evrişimli sinir ağı (CNN)</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week03/03-3">Doğal sinyalin özellikleri</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="{{site.baseurl}}/tr/week04/04">④</a></td>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week04/04-1">Tek boyutlu evrişim</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week05/05">⑤</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week05/05-1">Optimizasyon I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week05/05-2">Optimizasyon II</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week05/05-3">CNN, oto-gradyan</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week06/06">⑥</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week06/06-1">CNN uygulamaları</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week06/06-2">RNN'ler ve dikkat</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week06/06-3">RNN eğitimi </a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week07/07">⑦</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week07/07-1">Enerji tabanlı modeller (Energy-Based Models)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week07/07-2">SSL, EBM </a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week07/07-3">Otokodlayıcılar(Autoencoders)</a></td>
      <td>
        <a href="https://drive.google.com/file/d/1FEleglSDblyrSpHdGhaDydEQI36Rq5uB/">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
      </td>
    </tr>
<!-- =============================== WEEK 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week08/08">⑧</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week08/08-1">Zıtlık tabanlı yöntemler</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week08/08-2">Düzenlileştirilmiş gizil</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week08/08-3">Değişimsel otokodlayıcıların eğitimi/a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week09/09">⑨</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week09/09-1">Seyreklik</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week09/09-2">Kelime modeli, Çekişmeli Üretici Ağlar(GAN)</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week09/09-3">GAN'ların eğitimi</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week10/10">⑩</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week10/10-1">CV SSL I</a></td>
      <td rowspan="2">
         <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week10/10-2">CV SSL II</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week10/10-3">Kestirimsel Kontrol</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week11/11">⑪</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week11/11-1">Aktivasyonlar</a></td>
      <td rowspan="2">
         <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week11/11-2">Kayıplar</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week11/11-3">PPUU</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week12/12">⑫</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week12/12-1">Doğal Dil İşleme için Derin Öğrenme I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
	<a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td></tr>
<tr><td><a href="{{site.baseurl}}/tr/week12/12-2">Doğal Dil İşleme için Derin Öğrenme II</a></td>
	</tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week12/12-3">Dikkat ve Dönüştürücü</a></td>
      <td>
         <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/tr/week13/13">⑬</a></td>
      <td rowspan="2">Anlatım</td>
      <td><a href="{{site.baseurl}}/tr/week13/13-1"> Grafik Evrişimsel Ağlar (GCN) I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/tr/week13/13-2">GCN II</a></td></tr>
    <tr>
      <td rowspan="1">Uygulama</td>
      <td><a href="{{site.baseurl}}/tr/week13/13-3">GCN III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>

  </tbody>
</table>

<br/><br/>


## Ekip

<table>
  <thead>
    <tr>
      <th style="text-align: left">Rol</th>
      <th style="text-align: center">Fotoğraf</th>
      <th style="text-align: left">İletişim</th>
      <th style="text-align: left">Hakkında</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: left">Öğretim Üyesi</td>
      <td style="text-align: center"><img src="../images/Yann.png" width="100" height="100" /></td>
      <td style="text-align: left"><a href="https://twitter.com/ylecun">Yann LeCun</a><br />yann@cs.nyu.edu</td>
      <td style="text-align: left">NYU'da Bilgisayar Bilimi alanında Silver Professor <br /> Turing ödülü sahibi</td>
    </tr>
    <tr>
      <td style="text-align: left">Öğretim Üyesi</td>
      <td style="text-align: center"><img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100" /></td>
      <td style="text-align: left"><a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br />canziani@nyu.edu</td>
      <td style="text-align: left">NYU'da Bilgisayar Bilimi alanında Yardımcı Doçent</td>
    </tr>
    <tr>
      <td style="text-align: left">Asistan</td>
      <td style="text-align: center"><img src="https://pbs.twimg.com/profile_images/1186879808845860864/czRv3g1G_400x400.jpg" width="100" height="100" /></td>
      <td style="text-align: left"><a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br />goldstein@nyu.edu</td>
      <td style="text-align: left">NYU'da Bilgisayar Bilimi alanında doktora öğrencisi</td>
    </tr>
    <tr>
      <td style="text-align: left">Webmaster</td>
      <td style="text-align: center"><img src="https://pbs.twimg.com/profile_images/673997980370927616/vMXf545j_400x400.jpg" width="100" height="100" /></td>
      <td style="text-align: left"><a href="https://twitter.com/ebetica">Zeming Lin</a><br />zl2799@nyu.edu</td>
      <td style="text-align: left">NYU'da Bilgisayar Bilimi alanında doktora öğrencisi</td>
    </tr>
    <tr>
      <td style="text-align: left">Grader</td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Serkan Karakulak <br />sk7685@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
    <tr>
      <td style="text-align: left"> Grader </td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Raghav Jajodia <br />rj1408@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
    <tr>
      <td style="text-align: left"> Grader </td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Priyank Pathak <br />pp1953@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
    <tr>
      <td style="text-align: left"> Grader </td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Chiao-Hsun Wang <br />chw371@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
    <tr>
      <td style="text-align: left"> Grader </td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Pedro Vidal<br />pmh314@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
    <tr>
      <td style="text-align: left"> Grader </td>
      <td style="text-align: center"><img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100" /></td>
      <td style="text-align: left">Bixing Yan <br />by783@nyu.edu</td>
      <td style="text-align: left"> </td>
    </tr>
  </tbody>
</table>

