---
layout: default
title: APPRENTISSAGE PROFOND
author: Alfredo Canziani
lang-ref: home
lang: fr
translation-date: 16 Aug 2020
translator: Loïck Bourdois
---


**DS-GA 1008 - PRINTEMPS 2020 - [NYU CENTER FOR DATA SCIENCE](http://cds.nyu.edu/)**

| INSTRUCTEURS | Yann Le Cun & Alfredo Canziani |
| COURS MAGISTRAUX | Lundi 16h55 - 18h35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| TRAVAUX DIRIGÉS | Mardi 19h10 - 20h00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| FORUM       | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| DISCORD     | [NYU DL](https://discord.gg/CthuqsX8Pb) |
| MATÉRIEL | [Google Drive](https://bitly.com/DLSP20),<br> [Notebooks en anglais](https://github.com/Atcold/pytorch-Deep-Learning),<br> [Notebooks en français](https://github.com/lbourdois/pytorch-Deep-Learning-Notebooks-in-French) |



## Description

Ce cours porte sur les techniques de représentation et d'apprentissage profond les plus récentes.
Il se concentre sur l'apprentissage supervisé, non supervisé et autosupervisté, mais aussi sur les méthodes d’enchâssement, l'apprentissage métrique et les réseaux convolutifs et récurrents.
Il est illustré d’applications à la vision par ordinateur, la compréhension du langage naturel et la reconnaissance vocale.

Pour suivre ce cours, il est fortement conseillé d’avoir des prérequis en algèbre et d’avoir déjà suivi un cours introductif d'apprentissage machine ou de *data science*.
D’après Yann Le Cun, ces cours sont destinés à des personnes de niveau bac+4 ou bac+5.



## Cours

**Legende**: 🖥 Diaporama, 📓 Notebook Jupyter, 🎥 Video YouTube.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>Semaine</th>
      <th align="left">Format</th>
      <th align="left">Titre</th>
      <th align="left">Resources</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== SEMAINE 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week01/01">①</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week01/01-1">Histoire et motivations</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week01/01-2">Evolution et Apprentissage profond</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week01/01-3">Réseaux de neurones</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week02/02">②</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week02/02-1">Descente de gradient stochastique et rétropropagation</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week02/02-2">La rétropropagation en pratique</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week02/02-3">Entraînement d’un réseau de neurones</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week03/03">③</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week03/03-1">Transformation des paramètres</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week03/03-2">Réseaux de neurones convolutifs (ConvNets)</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week03/03-3">Propriétés des signaux naturels</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="{{site.baseurl}}/fr/week04/04">④</a></td>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week04/04-1">Convolution à 1 dimension</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week05/05">⑤</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week05/05-1">Optimisation I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week05/05-2">Optimisation II</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week05/05-3">ConvNets, autograd</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week06/06">⑥</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week06/06-1">Applications des ConvNets</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week06/06-2">Réseaux de neurones récurrents (RNNs) et Attention</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week06/06-3">Entraîner des RNNs</a></td>
      <td>
	<a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week07/07">⑦</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week07/07-1">Modèles à base d’énergie (EBMs)</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week07/07-2">Apprentissage autosupervisé et EBMs</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week07/07-3">Auto-encodeurs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
        <a href="https://youtu.be/bggWQ14DD9M">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week08/08">⑧</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week08/08-1">Méthodes contrastives</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week08/08-2">Variable latente régularisée</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week08/08-3">Entraîner des Auto-Encodeurs Variationnels (VAEs)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week09/09">⑨</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week09/09-1">Eparsité</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week09/09-2">Modèles du monde, Réseaux génératifs antagonistes (GANs)</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week09/09-3">Entraîner des GANs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week10/10">⑩</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week10/10-1">Apprentissage autosupervisé appliqué à la vision par ordinateur I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week10/10-2"> Apprentissage autosupervisé appliqué à la vision par ordinateur II</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week10/10-3">Contrôle prédictif</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week11/11">⑪</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week11/11-1">Fonctions d’activation</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week11/11-2">Fonctions de perte</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week11/11-3">Prediction et apprentissage d'une politique sous incertitude</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week12/12">⑫</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week12/12-1">Apprentissage profond pour le traitement du langage naturel I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
        <a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week12/12-2"> Apprentissage profond pour le traitement du langage naturel II</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week12/12-3">Attention & Transformer</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week13/13">⑬</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week13/13-1"> Réseau convolutif pour graphe I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week13/13-2"> Réseau convolutif pour graphe II</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week13/13-3"> Réseau convolutif pour graphe III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 14 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/fr/week14/14">⑭</a></td>
      <td rowspan="2">Cours magistral</td>
      <td><a href="{{site.baseurl}}/fr/week14/14-1">Prédiction utilisant la structure</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1qBu-2hYWaGYEXeX7kAU8O4S2RZ1hMjsk/">🖥️</a>
        <a href="https://youtu.be/gYayCG6YyO8">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/fr/week14/14-2">Méthodes graphiques</a></td></tr>
    <tr>
      <td rowspan="1">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week14/14-3">Régularisation et réseaux bayésiens</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/07%20-%20Regularisation.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/12-regularization.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/08%20-%20Bayesian%20NN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/13-bayesian_nn.ipynb">📓</a>
        <a href="https://youtu.be/DL7iew823c0">🎥</a>
      </td>
    </tr>
<!-- =============================== SEMAINE 15 =============================== -->
    <tr>
      <td rowspan="2" align="center"><a href="{{site.baseurl}}/fr/week15/15">⑮</a></td>
      <td rowspan="2">Travaux dirigés</td>
      <td><a href="{{site.baseurl}}/fr/week15/15-1">Inférence pour les EBMs à variable latente</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/sbhr2wjU1-I">🎥</a>
      </td>
    </tr>
    <tr>
      <td><a href="{{site.baseurl}}/fr/week15/15-2">Entraînement des EBMs à variable latente</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/XLSb1Cs1Jao">🎥</a>
      </td>
    </tr>
  </tbody>
</table>

## Corps enseignant

| Rôle | Photo | Contact | A propos |
|:-----|:-----:|:--------|:------|
|Instructeur|<img src="../images/Yann.png" width="100" height="100">|<a href="https://twitter.com/ylecun">Yann Le Cun</a><br>yann@cs.nyu.edu|*Silver Professor* en *Computer*<br> *Science* à la *New York* <br> *University* (NYU) et<br>lauréat du prix Turing 2019|
|Instructeur|<img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100">|<a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br>canziani@nyu.edu| Prof. Ast. en<br>*Computer Science* à la NYU|
|Assistant|<img src="../images/Mark.png" width="100" height="100">|<a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br>goldstein@nyu.edu|Doctorant en<br>*Computer Science* à la NYU|
|Webmaster|<img src="../images/Zeming.png" width="100" height="100">|<a href="https://twitter.com/ebetica">Zeming Lin</a><br>zl2799@nyu.edu|Doctorant en<br>*Computer Science* à la NYU|
|Traducteur|<img src="https://lbourdois.github.io/blog/assets/images/pp_Lo%C3%AFck_Bourdois.png" width="100" height="100">| <a href="https://twitter.com/BdsLoick">Loïck Bourdois <br>| N'appartient pas au corps<br>enseignant de la NYU |
