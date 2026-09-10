---
layout: default
title: DUBOKO UČENJE
author: Alfredo Canziani
lang-ref: home
lang: sr
---

**DS-GA 1008 · PROLEĆE 2020 · [NYU CENTAR ZA DATA SCIENCE](http://cds.nyu.edu/)**

| PREDAVAČI   | Yann LeCun & Alfredo Canziani |
| LEKCIJE     | Ponedeljak 16:55 – 18:35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| VEŽBE       | Utorak 19:10 – 20:00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| FORUM       | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| MATERIJALI  | [Google Drive](https://bitly.com/DLSP20), [Notebooks](https://github.com/Atcold/pytorch-Deep-Learning) |


## Opis

Ovaj kurs prati najskorije tehnike u dubokom učenju i učenju reprezentacija. Fokusira se na nadgledano i nenadgledano učenje, embedding metode, učenje metrika, konvolucione i rekurentne neuronske mreže, sa primenama u računarskoj viziji, razumevanju prirodnog jezika i prepoznavanju govora. Potrebno predznanje: [DS-GA 1001 Intro to Data Science](https://cds.nyu.edu/academics/ms-curriculum/) ili kurs mašinskog učenja na nivou master ili doktorskih studija.

## Lekcije

**Oznake**: 🖥 slajdovi, 📓 Jupyter notebook, 🎥 YouTube video.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>Nedelja</th>
      <th align="left">Format</th>
      <th align="left">Naslov</th>
      <th align="left">Sadržaji</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== Nedelja 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week01/01">①</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week01/01-1">Istorija i motivacija</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week01/01-2">Evolucija i duboko učenje</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week01/01-3">Neuronske mreže (NN)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week02/02">②</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week02/02-1">Stohastički gradijentni spust (SGD) i propagacija unazad</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week02/02-2">Propagacija unazad u praksi</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week02/02-3">Obučavanje neuronskih mreža</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week03/03">③</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week03/03-1">Transformacija parametara</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week03/03-2">Konvolucione neuronske mreže (CNN)</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week03/03-3">Svojstva prirodnih signala</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="en/week04/04">④</a></td>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week04/04-1">1D konvolucija</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week05/05">⑤</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week05/05-1">Optimizacija I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week05/05-2">Optimizacija II</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week05/05-3">Konvolucione neuronske mreže (CNN), autograd</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week06/06">⑥</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week06/06-1">CNN primene</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week06/06-2">Rekurentne neuronske mreže (RNN) i mehanizam pažnje (attention)</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week06/06-3">Obučavanje RNN</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week07/07">⑦</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week07/07-1">Modeli zasnovani na energiji (EBM)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week07/07-2">Samonadgledano učenje (SSL), EBM</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week07/07-3">Autoenkoderi</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
        <a href="https://youtu.be/bggWQ14DD9M">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week08/08">⑧</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week08/08-1">Kontrastivne metode</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week08/08-2">Regularizovani latentni modeli energije</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week08/08-3">Obučavanje varijacionih autoenkodera (VAE)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week09/09">⑨</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week09/09-1">Proređenost</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week09/09-2">Model reči, GAN</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week09/09-3">Treniranje GAN-ova</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week10/10">⑩</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week10/10-1">Računarska vizija (CV) SSL I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week10/10-2">Računarska vizija (CV) SSL II</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week10/10-3">Prediktivno upravljanje</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week11/11">⑪</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week11/11-1">Aktivacije</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week11/11-2">Funkcije gubitka</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week11/11-3">PPUU</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week12/12">⑫</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week12/12-1">Duboko učenje za obradu prirodnih jezika (NLP) I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
        <a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week12/12-2">Duboko učenje za obradu prirodnih jezika (NLP) II</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week12/12-3">Mehanizmi pažnje (attention) i Transformeri</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week13/13">⑬</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week13/13-1">Grafovske konvolucione mreže (GCN) I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week13/13-2">Grafovske konvolucione mreže (GCN) II</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week13/13-3">Grafovske konvolucione mreže (GCN) III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>
<!-- =============================== Nedelja 14 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week14/14">⑭</a></td>
      <td rowspan="2">Lekcije</td>
      <td><a href="en/week14/14-1">Struktuirane predikcije</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1qBu-2hYWaGYEXeX7kAU8O4S2RZ1hMjsk/">🖥️</a>
        <a href="https://youtu.be/gYayCG6YyO8">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week14/14-2">Grafičke metode</a></td></tr>
    <tr>
      <td rowspan="1">Praktikum</td>
      <td><a href="en/week14/14-3">Regularizacija i Bajesovske neuronske mreže</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/07%20-%20Regularisation.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/12-regularization.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/08%20-%20Bayesian%20NN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/13-bayesian_nn.ipynb">📓</a>
        <a href="https://youtu.be/DL7iew823c0">🎥</a>
      </td>
    </tr>
  </tbody>
</table>


## Ljudi

| Uloga| Slika | Kontakt | O nama |
|:-----|:-----:|:--------|:------|
|Predavač  |<img src="images/Yann.png" width="100" height="100">|<a href="https://twitter.com/ylecun">Yann LeCun</a><br>yann@cs.nyu.edu|Silver Profesor računarskih nauka na NYU<br>i dobitnih Turing nagrade|
|Predavač  |<img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100">|<a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br>canziani@nyu.edu|Asst. Prof. računarskih nauka na NYU|
|Asistent  |<img src="../images/Mark.png" width="100" height="100">|<a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br>goldstein@nyu.edu|Doktorski student računarskih nauka na NYU|
|Webmaster |<img src="../images/Zeming.png" width="100" height="100">|<a href="https://twitter.com/ebetica">Zeming Lin</a><br>zl2799@nyu.edu|Doktorski student računarskih nauka na NYU|


<!--
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Serkan Karakulak <br>sk7685@nyu.edu|
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Raghav Jajodia <br>rj1408@nyu.edu|
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Priyank Pathak <br>pp1953@nyu.edu|
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Chiao-Hsun Wang <br>chw371@nyu.edu|
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Pedro Vidal<br>pmh314@nyu.edu|
|Grader|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Bixing Yan <br>by783@nyu.edu|
-->


## Disclaimer

Svi ostali tekstovi na ovom sajtu su beleške sa predavanja studenata Njujorškog Univerziteta tokom lekcija koje su držali Yann LeCun, Alfredo Canziani, Aaron Defazio, Ishan Misra, Mike Lewis and Xavier Bresson.
Dakle, tekstove na engleskom je pisalo oko 130 ljudi što utiče na homogenost teksta (nešto je napisano u prošlom vremenu, nešto u sadašnjem; skraćenice nisu uvek iste; neke rečenice su kratke, a neke su u 5-6 redova, itd.).
Moguće je da postoje neke greške: greške u kucanju, slovne greške, itd. Ako primetite neku, pozivamo vas da postavite PR na [GitHub direktorijumu sajta](https://github.com/Atcold/pytorch-Deep-Learning/pulls) specifirajući sa `[SR]` da je u vezi tekstova na srpskom.

Želimo vam duboko čitanje!
