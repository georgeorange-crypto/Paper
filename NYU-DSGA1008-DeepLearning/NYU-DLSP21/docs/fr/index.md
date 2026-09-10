---
layout: default
title: APPRENTISSAGE PROFOND
author: Alfredo Canziani
lang-ref: home
lang: fr
translation-date: 19 Jun 2021
translator: Loïck Bourdois
---

<!--
**DS-GA 1008 · SPRING 2021 · [NYU CENTER FOR DATA SCIENCE](http://cds.nyu.edu/)**

| INSTRUCTORS | Yann LeCun & Alfredo Canziani |
| LECTURES    | Wednesday 9:30 – 11:30, Zoom |
| PRACTICA    | Tuesdays 9:30 – 10:30, Zoom |
| FORUM       | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| DISCORD     | [NYU DL](https://discord.gg/CthuqsX8Pb) |
| MATERIAL    | [2021 repo](https://github.com/Atcold/NYU-DLSP21) |
-->

**DS-GA 1008 · PRINTEMPS 2021 · [NYU CENTER FOR DATA SCIENCE](http://cds.nyu.edu/)**

| INSTRUCTEURS | Yann Le Cun & Alfredo Canziani |
| COURS MAGISTRAUX  | Mercredi 9:30 – 11:30, Zoom |
| TRAVAUX DIRIGÉS   | Jeudi 9:30 – 10:30, Zoom |
| FORUM       | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| DISCORD     | [NYU DL](https://discord.gg/CthuqsX8Pb) |
| MATERIEL    | [répertoire GitHub](https://github.com/Atcold/NYU-DLSP21) |


<!--
## 2021 edition disclaimer

Check the repo's [`README.md`](https://github.com/Atcold/NYU-DLSP21/blob/master/README.md) and learn about:

- Content new organisation
- The semester's second half intellectual dilemma
- This semester repository
- Previous releases
-->

## Informations liées à l'édition 2021

Consultez le fichier [`README.md`](https://github.com/Atcold/NYU-DLSP21/blob/master/docs/fr/README-FR.md) du dépôt pour en savoir plus sur  :

- La nouvelle organisation du contenu
- Le dilemme intellectuel de la seconde moitié du semestre
- Le répertoire de ce semestre
- Les éditions précédentes


<!--
## Lectures

Most of the lectures, labs, and notebooks are similar to the previous edition, nevertheless, some are brand new.
I will try to make clear which is which.

**Legend**: 🖥 slides, 📓 Jupyter notebook, 🎥 YouTube video.

### Theme 1 : Introduction

 * History and resources [🎥](https://youtu.be/mTtDfKgLm54) [🖥 ](https://drive.google.com/file/d/1vVNUye-1JNJnqP4A0704sjtF7gs_MpCI/)
 * Gradient descent and the backpropagation algorithm [🎥](https://youtu.be/nTlCqaL7fCY) [🖥 ](https://drive.google.com/file/d/1tYPYGYFDQw5IBs9wx4egCcBTTX2h9d9g/)
 * [Neural nets inference](https://atcold.github.io/NYU-DLSP21/en/week02/02-3/) [🎥](https://youtu.be/0TdAmZUMj2k) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/02-space_stretching.ipynb)
 * Modules and architectures [🎥](https://youtu.be/IYQN3i7dJIQ)[🖥 ](https://drive.google.com/file/d/1IaDI6BJ6g4SJbJLtNjVE_miWRzBH1-MX/)
 * [Neural nets training](https://atcold.github.io/NYU-DLSP21/en/week03/03-3/) [🎥](https://youtu.be/EyKiYVwrdjE) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/01%20-%20Spiral%20classification.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/04-spiral_classification.ipynb)[📓](https://github.com/Atcold/NYU-DLSP20/blob/master/05-regression.ipynb)
* [Homework 1](https://drive.google.com/drive/folders/1g-uQNEi_NJyELGRMrJGXXxmARDabcXFd)

### Theme 2: Parameters sharing

 * Recurrent and convolutional nets [🎥](https://youtu.be/7dU3TFBJl-0) [🖥 ](https://drive.google.com/file/d/1GtI4ywzI84oamyr_W5k_wzgfRN139aFD/) [📝 ](https://drive.google.com/file/d/12jP4ssUIoGURAU8jGj6QwKXyZVdXW0o6/)
 * ConvNets in practice [🎥](https://youtu.be/-wz_vADGbtE) [🖥 ](https://drive.google.com/file/d/1WX3HoZhekL4MVvi_7VuLRYJtBGnF9JJY/) [📝 ](https://drive.google.com/file/d/1ToWP7e71diAeMtQ0D9pU-f0BXF4bAg46/)
 * Natural signals properties and the convolution [🎥](https://youtu.be/KvvNkE2vQVk) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/02%20-%20CNN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/06-convnet.ipynb)
 * Recurrent neural networks, vanilla and gated (LSTM) [🎥](https://youtu.be/5KSGNomPJTE) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/04%20-%20RNN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/08-seq_classification.ipynb)[📓](https://github.com/Atcold/NYU-DLSP20/blob/master/09-echo_data.ipynb)
 * [Homework 2](https://drive.google.com/drive/folders/1or1YiW0fFiZGEYy6b4EOEDgRPr0GQX0i)

### Theme 3: Energy based models, foundations

 * Energy based models (I) [🎥](https://youtu.be/xIn-Czj1g2Q) [🖥 ](https://drive.google.com/file/d/1kLUgZdRYFO5ksYHzbsRS8m8IocNiGu2J/)
 * Inference for LV-EBMs [🎥](https://youtu.be/xA_OPjRby5g) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/12%20-%20EBM.pdf)
 * What are EBMs good for? [🎥](https://youtu.be/eJeJWWEo7cE)
 * Energy based models (II) [🎥](https://youtu.be/8u2s64ZtmiA) [🖥 ](https://drive.google.com/file/d/1czfiEE6IPqE7q1fTm-SWOiC3VNEtpNrj/) [📝 ](https://drive.google.com/file/d/1IB5dkcAQ6GsHEz8Eg2hjaeQeVtT2i4Z5/)
 * Training LV-EBMs [🎥](https://youtu.be/XIMaWj5YjOQ) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/12%20-%20EBM.pdf)
 * [Homework 3: structured prediction](https://drive.google.com/drive/folders/1zGy_SnMBqaoS7_dHRmKiOFtqNV1jJJb6)

### Theme 4: Energy based models, advanced

 * Energy based models (III) [🎥](https://youtu.be/AOFUZZZ6KyU) [🖥 ](https://drive.google.com/file/d/19crFMCpJ5YCGbWv6myv7O4pGaJT6-u5p/)
 * [Unsup learning and autoencoders](https://atcold.github.io/NYU-DLSP21/en/week07/07-3/) [🎥](https://youtu.be/IuXsG3sN3zY) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/)
 * Energy based models (VI) [🎥](https://youtu.be/bdebHVF__mo) [🖥 ](https://drive.google.com/file/d/1w6QO0a2_0Prz1U1mxa1n-YP9U8GW1_kq/)
 * [From LV-EBM to target prop to (any) autoencoder](https://atcold.github.io/NYU-DLSP21/en/week08/08-3/) [🎥](https://youtu.be/PpcN-F7ovK0) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/)
 * Energy based models (V) [🎥](https://youtu.be/AQtPoDnauq4) [🖥 ](https://drive.google.com/file/d/1tKzrnJgptnyMcE_4zWJNP5INeVcVBWkr/)
 * [AEs with PyTorch and GANs](https://atcold.github.io/NYU-DLSP21/en/week09/09-3/) [🎥](https://youtu.be/bZF4N8HR1cc) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/) [📓](https://github.com/Atcold/NYU-DLSP21/blob/master/10-autoencoder.ipynb)[📓](https://github.com/Atcold/NYU-DLSP21/blob/master/11-VAE.ipynb)


### Theme 5: Associative memories

 * Energy based models (V) [🎥](https://youtu.be/AQtPoDnauq4) [🖥 ](https://drive.google.com/file/d/1tKzrnJgptnyMcE_4zWJNP5INeVcVBWkr/)
 * [Attention & transformer](https://atcold.github.io/NYU-DLSP21/en/week10/10-3/) [🎥](https://youtu.be/fEVyfT-gLqQ) [🖥 ](https://drive.google.com/file/d/1MGfNPjg9YpxMcdfP2GcjluMQXlXud10C/) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/15-transformer.ipynb)


### Theme 6: Graphs

 * [Graph transformer nets](https://atcold.github.io/NYU-DLSP21/en/week11/11/) [[A](https://atcold.github.io/NYU-DLSP21/en/week11/11-1/)][[B](https://atcold.github.io/NYU-DLSP21/en/week11/11-2/)] [🎥](https://youtu.be/Of9s8epjflU) [🖥 ](https://drive.google.com/file/d/1-u2fSSICaWoFu91oiMsd2mAhg6ZGomMg/)
 * Graph convolutional nets (I) [from last year] [🎥](https://youtu.be/Iiv9R6BjxHM) [🖥 ](https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/)
 * Graph convolutional nets (II) [🎥](https://youtu.be/lWUh7jzhQ1Q) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/11%20-%20GCN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/16-gated_GCN.ipynb)


### Theme 7: Control

 1. [Planning and control](https://atcold.github.io/NYU-DLSP21/en/week12/12-3/) [🎥](https://youtu.be/wTg6qJlXkok) [🖥 ](https://drive.google.com/file/d/1JDssHbOxX_MZlmOopQaPZxuyCVoNExcM/)
 2. The Truck Backer-Upper [🎥](https://youtu.be/C4iSZ3IJU-w) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/09%20-%20Controller%20learning.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/14-truck_backer-upper.ipynb)
 3. Prediction and Planning Under Uncertainty [🎥](https://youtu.be/DJgloa244ZQ) [🖥 ](http://bit.ly/PPUU-slides)


### Theme 8: Optimisation
 * Optimisation (I) [from last year] [🎥](https://youtu.be/--NZb480zlg) [🖥 ](https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab)
 * Optimisation (II) [🎥](https://youtu.be/n1w5b5rTFv0) [🖥 ](https://drive.google.com/file/d/1ExKFOOdyUiLuk3zN5LAVwUyEoI1HJxag/) [📝 ](https://drive.google.com/file/d/1UJibhwdwJPZDwqlVVzeAHScPxK4TDCq5/)


### Miscellaneous

 * [SSL for vision](https://atcold.github.io/NYU-DLSP21/en/week10/10/) [[A](https://atcold.github.io/NYU-DLSP21/en/week10/10-1/)][[B](https://atcold.github.io/NYU-DLSP21/en/week10/10-2/)] [🎥](https://youtu.be/8L10w1KoOU8) [🖥 ](https://drive.google.com/file/d/1BQlWMVesOcioW69RCKWCjp6280Q42W9q/)
 * [Low resource machine translation](https://atcold.github.io/NYU-DLSP21/en/week12/12/) [[A](https://atcold.github.io/NYU-DLSP21/en/week12/12-1/)][[B](https://atcold.github.io/NYU-DLSP21/en/week12/12-2/)] [🎥](https://youtu.be/fR42OOy9ROo) [🖥 ](https://drive.google.com/file/d/1pm1fM1DFqCHrjGorCQCwg5SgMjwZBwGR/)
 * Lagrangian backprop, final project, and Q&A [🎥](https://youtu.be/MJfnamMFylo) [🖥 ](https://drive.google.com/file/d/1Z9tkkTpsHzcyoPN9yqq8Nv_Bnw5bghEK/) [📝 ](https://drive.google.com/file/d/1BMoaE7I-IwZF32YfASiTw1OnMblWAVGb/)
-->

## Cours magistraux

La plupart des cours, des travaux dirigés et des notebooks sont similaires à l’édition précédente. Néanmoins certains sont nouveaux. Nous essayerons d’indiquer clairement lesquels.

**Légende** : 🖥 diapositives, 📓 *notebook* Jupyter, 🎥 vidéos YouTube

### Thème 1 : Introduction

 * Historique et ressources [🎥](https://youtu.be/mTtDfKgLm54) [🖥 ](https://drive.google.com/file/d/1vVNUye-1JNJnqP4A0704sjtF7gs_MpCI/)
 * Descente de gradient et algorithme de rétropropagation [🎥](https://youtu.be/nTlCqaL7fCY) [🖥 ](https://drive.google.com/file/d/1tYPYGYFDQw5IBs9wx4egCcBTTX2h9d9g/)
 * [Inférence des réseaux de neurones](https://atcold.github.io/NYU-DLSP21/fr/week02/02-3/) [🎥](https://youtu.be/0TdAmZUMj2k) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/02-space_stretching.ipynb)
 * Modules et architectures [🎥](https://youtu.be/IYQN3i7dJIQ)
 * [Entraînement des réseaux neuronaux](https://atcold.github.io/NYU-DLSP21/fr/week03/03-3/) [🎥](https://youtu.be/EyKiYVwrdjE) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/01%20-%20Spiral%20classification.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/04-spiral_classification.ipynb)[📓](https://github.com/Atcold/NYU-DLSP20/blob/master/05-regression.ipynb)
* [Devoir 1](https://drive.google.com/drive/folders/1g-uQNEi_NJyELGRMrJGXXxmARDabcXFd)


### Thème 2 : Partage des paramètres

 * Réseaux convolutifs et récurrents [🎥](https://youtu.be/7dU3TFBJl-0) [🖥 ](https://drive.google.com/file/d/1GtI4ywzI84oamyr_W5k_wzgfRN139aFD/) [📝 ](https://drive.google.com/file/d/12jP4ssUIoGURAU8jGj6QwKXyZVdXW0o6/)
 * ConvNets en pratique [🎥](https://youtu.be/-wz_vADGbtE) [🖥 ](https://drive.google.com/file/d/1WX3HoZhekL4MVvi_7VuLRYJtBGnF9JJY/) [📝 ](https://drive.google.com/file/d/1ToWP7e71diAeMtQ0D9pU-f0BXF4bAg46/)
 * Les propriétés des signaux naturels et la convolution [🎥](https://youtu.be/KvvNkE2vQVk) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/02%20-%20CNN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/06-convnet.ipynb)
 * Réseaux neuronaux récurrents, de base et à portes (LSTM) [🎥](https://youtu.be/5KSGNomPJTE) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/04%20-%20RNN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/08-seq_classification.ipynb)[📓](https://github.com/Atcold/NYU-DLSP20/blob/master/09-echo_data.ipynb)
 * [Devoir 2](https://drive.google.com/drive/folders/1or1YiW0fFiZGEYy6b4EOEDgRPr0GQX0i)


### Thème 3 : Modèles à base d'énergie (EBMs), fondations

 * Modèles à base d'énergie (I) [🎥](https://youtu.be/xIn-Czj1g2Q) [🖥 ](https://drive.google.com/file/d/1kLUgZdRYFO5ksYHzbsRS8m8IocNiGu2J/)
 * Inférence pour les modèles à base d'énergie à variable latente (LV-EBMs) [🎥](https://youtu.be/xA_OPjRby5g) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/12%20-%20EBM.pdf)
 * A quoi servent les EBMs ? [🎥](https://youtu.be/eJeJWWEo7cE)
 * Modèles à base d'énergie (II) [🎥](https://youtu.be/8u2s64ZtmiA) [🖥 ](https://drive.google.com/file/d/1czfiEE6IPqE7q1fTm-SWOiC3VNEtpNrj/) [📝 ](https://drive.google.com/file/d/1IB5dkcAQ6GsHEz8Eg2hjaeQeVtT2i4Z5/)
 * Entraînement des LV-EBMs [🎥](https://youtu.be/XIMaWj5YjOQ) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/12%20-%20EBM.pdf)
 * [Devoir 3](https://drive.google.com/drive/folders/1zGy_SnMBqaoS7_dHRmKiOFtqNV1jJJb6)


### Thème 4 : Modèles à base d'énergie, avancés

 * Modèles à base d'énergie (III) [🎥](https://youtu.be/AOFUZZZ6KyU) [🖥 ](https://drive.google.com/file/d/19crFMCpJ5YCGbWv6myv7O4pGaJT6-u5p/)
 * [Apprentissage automatique et auto-encodeurs](https://atcold.github.io/NYU-DLSP21/fr/week07/07-3/) [🎥](https://youtu.be/IuXsG3sN3zY) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/)
 * Modèles à base d'énergie (IV) [🎥](https://youtu.be/bdebHVF__mo) [🖥 ](https://drive.google.com/file/d/1w6QO0a2_0Prz1U1mxa1n-YP9U8GW1_kq/)
 * [Du LV-EBM à (tout) auto-encodeur](https://atcold.github.io/NYU-DLSP21/fr/week08/08-3/) [🎥](https://youtu.be/PpcN-F7ovK0) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/)
 * Modèles à base d'énergie (V) [🎥](https://youtu.be/AQtPoDnauq4) [🖥 ](https://drive.google.com/file/d/1tKzrnJgptnyMcE_4zWJNP5INeVcVBWkr/)
 * [Auto-encodeurs avec PyTorch et GANs](https://atcold.github.io/NYU-DLSP21/fr/week09/09-3/) [🎥](https://youtu.be/bZF4N8HR1cc) [🖥 ](https://drive.google.com/file/d/1aa1Hzq5KRekq32mlW4_pgIXMec18WgOg/) [📓](https://github.com/Atcold/NYU-DLSP21/blob/master/10-autoencoder.ipynb) [📓](https://github.com/Atcold/NYU-DLSP21/blob/master/11-VAE.ipynb)


### Thème 5 : Mémoires associatives

 * Modèles à base d'énergie (VI) [🎥](https://youtu.be/AQtPoDnauq4) [🖥](https://drive.google.com/file/d/1tKzrnJgptnyMcE_4zWJNP5INeVcVBWkr/)
 * [Attention & Transformer](https://atcold.github.io/NYU-DLSP21/fr/week10/10-3/) [🎥](https://youtu.be/fEVyfT-gLqQ) [🖥 ](https://drive.google.com/file/d/1MGfNPjg9YpxMcdfP2GcjluMQXlXud10C/) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/15-transformer.ipynb)


### Thème 6 : Graphes

 * [Graph Transformer Network](https://atcold.github.io/NYU-DLSP21/fr/week11/11/) [[A](https://atcold.github.io/NYU-DLSP21/fr/week11/11-1/)][[B](https://atcold.github.io/NYU-DLSP21/fr/week11/11-2/)] [🎥](https://youtu.be/Of9s8epjflU) [🖥 ](https://drive.google.com/file/d/1-u2fSSICaWoFu91oiMsd2mAhg6ZGomMg/)
 * Réseaux convolutifs pour graphe (I) [édition 2020] [🎥](https://youtu.be/Iiv9R6BjxHM) [🖥 ](https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/)
 * Réseaux convolutifs pour graphe (II) [🎥](https://youtu.be/lWUh7jzhQ1Q) [🖥](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/11%20-%20GCN.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/16-gated_GCN.ipynb)


### Thème 7 : Contrôle

 1. [Planification et contrôle](https://atcold.github.io/NYU-DLSP21/fr/week12/12-3/) [🎥](https://youtu.be/wTg6qJlXkok) [🖥 ](https://drive.google.com/file/d/1JDssHbOxX_MZlmOopQaPZxuyCVoNExcM/)
 2. Le « Truck Backer-Upper » [🎥](https://youtu.be/C4iSZ3IJU-w) [🖥 ](https://github.com/Atcold/NYU-DLSP20/blob/master/slides/09%20-%20Controller%20learning.pdf) [📓](https://github.com/Atcold/NYU-DLSP20/blob/master/14-truck_backer-upper.ipynb)
 3. Prévision et planification en cas d'incertitude [🎥](https://youtu.be/DJgloa244ZQ) [🖥](http://bit.ly/PPUU-slides)


### Thème 8 : Optimisation
 * Optimisation (I) [édition 2020] [🎥](https://youtu.be/--NZb480zlg) [🖥](https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab)
 * Optimisation (II) [🎥](https://youtu.be/n1w5b5rTFv0) [🖥 ](https://drive.google.com/file/d/1ExKFOOdyUiLuk3zN5LAVwUyEoI1HJxag/) [📝 ](https://drive.google.com/file/d/1UJibhwdwJPZDwqlVVzeAHScPxK4TDCq5/)


### Divers

 * [Apprentissage autosupervisé en vision](https://atcold.github.io/NYU-DLSP21/fr/week10/10/) [[A](https://atcold.github.io/NYU-DLSP21/fr/week10/10-1/)][[B](https://atcold.github.io/NYU-DLSP21/fr/week10/10-2/)] [🎥](https://youtu.be/8L10w1KoOU8) [🖥 ](https://drive.google.com/file/d/1BQlWMVesOcioW69RCKWCjp6280Q42W9q/)
 * [Traduction automatique à faibles ressources](https://atcold.github.io/NYU-DLSP21/fr/week12/12/) [[A](https://atcold.github.io/NYU-DLSP21/fr/week12/12-1/)][[B](https://atcold.github.io/NYU-DLSP21/fr/week12/12-2/)] [🎥](https://youtu.be/fR42OOy9ROo) [🖥 ](https://drive.google.com/file/d/1pm1fM1DFqCHrjGorCQCwg5SgMjwZBwGR/)
 * Rétropropagation lagrangienne, projet final et Q&R [🎥](https://youtu.be/MJfnamMFylo) [🖥 ](https://drive.google.com/file/d/1Z9tkkTpsHzcyoPN9yqq8Nv_Bnw5bghEK/) [📝 ](https://drive.google.com/file/d/1BMoaE7I-IwZF32YfASiTw1OnMblWAVGb/)
