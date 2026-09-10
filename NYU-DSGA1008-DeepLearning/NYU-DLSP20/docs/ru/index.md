---
layout: default
title: ГЛУБОКОЕ ОБУЧЕНИЕ
author: Alfredo Canziani
lang-ref: home
lang: ru
---

<!-- **DS-GA 1008 · SPRING 2020 · [NYU CENTER FOR DATA SCIENCE](http://cds.nyu.edu/)** -->

**DS-GA 1008 · ВЕСНА 2020 · [ЦЕНТР НАУКИ О ДАННЫХ НЬЮ-ЙОРКСКОГО УНИВЕРСИТЕТА NYU](http://cds.nyu.edu/)**

<!-- | INSTRUCTORS | Yann LeCun & Alfredo Canziani |
| LECTURES    | Mondays 16:55 – 18:35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| PRACTICA    | Tuesdays 19:10 – 20:00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| FORUM       | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| MATERIAL    | [Google Drive](https://bitly.com/DLSP20), [Notebooks](https://github.com/Atcold/pytorch-Deep-Learning) | -->

| ПРЕПОДАВАТЕЛИ | Yann LeCun & Alfredo Canziani |
| ЛЕКЦИИ        | Mondays 16:55 – 18:35, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| ПРАКТИКУМЫ    | Tuesdays 19:10 – 20:00, [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| ФОРУМ         | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| МАТЕРИАЛЫ     | [Google Drive](https://bitly.com/DLSP20), [Рабочие тетради](https://github.com/Atcold/pytorch-Deep-Learning) |


<!-- ## Description -->

## Описание

<!-- This course concerns the latest techniques in deep learning and representation learning, focusing on supervised and unsupervised deep learning, embedding methods, metric learning, convolutional and recurrent nets, with applications to computer vision, natural language understanding, and speech recognition. The prerequisites include: [DS-GA 1001 Intro to Data Science](https://cds.nyu.edu/academics/ms-curriculum/) or a graduate-level machine learning course. -->

В этом курсе рассматриваются новейшие методы машинного обучения и обучения признакам, с фокусом на глубокое обучение с учителем и без учителя, методы извлечения признаков, изучение метрик, свёрточные и рекуррентные сети, с приложениями в компьютерном зрении, понимании естественного языка и распознавании речи. Предварительные требования включают в себя: [DS-GA 1001 Intro to Data Science](https://cds.nyu.edu/academics/ms-curriculum/) или курс машинного обучения уровня graduate.

<!-- ## Lectures -->

## Лекции

**Обозначения**: 🖥 slides, 📓 Jupyter notebook, 🎥 YouTube video.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>Неделя</th>
      <th align="left">Формат</th>
      <th align="left">Заголовок</th>
      <th align="left">Ресурсы</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== WEEK 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week01/01">①</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week01/01-1">История и предпосылки</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week01/01-2">Развитие и Глубокое Обучение</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week01/01-3">Нейронные сети (NN)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week02/02">②</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week02/02-1">Стохастический градиентный спуск и метод обратного распространения ошибки</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week02/02-2">Метод обратного распространения ошибки на практике</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week02/02-3">Обучение нейронных сетей</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week03/03">③</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week03/03-1">Преобразование параметров</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week03/03-2">CNN (Свёрточные нейронные сети)</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week03/03-3">Свойства естественных сигналов</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="{{site.baseurl}}/ru/week04/04">④</a></td>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week04/04-1">1D свёртки</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week05/05">⑤</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week05/05-1">Оптимизация I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week05/05-2">Оптимизация II</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week05/05-3">CNN, autograd</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week06/06">⑥</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week06/06-1">Применение CNN</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week06/06-2">Рекуррентные нейронные сети (RNNs) и внимание</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week06/06-3">Обучение RNNs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week07/07">⑦</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week07/07-1">Энергетические модели</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week07/07-2">Самостоятельное обучение, Энергетические модели</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week07/07-3">Автокодировщики</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
        <a href="https://youtu.be/bggWQ14DD9M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week08/08">⑧</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week08/08-1">Методы противопоставления</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week08/08-2">Регуляризованная скрытность</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week08/08-3">Обучение вариационных автокодировщиков</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week09/09">⑨</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week09/09-1">Разреженность</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week09/09-2">Модель слова, GANs</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week09/09-3">Обучение GANs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week10/10">⑩</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week10/10-1">Самостоятельное обучение в компьютерном зрении I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week10/10-2">Самостоятельное обучение в компьютерном зрении II</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week10/10-3">Предсказательное управление</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week11/11">⑪</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week11/11-1">Функции активации</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week11/11-2">Функции потерь</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week11/11-3">Предсказание и обучение поведения в условиях неопределённости</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week12/12">⑫</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week12/12-1">Глубокое Обучение для обработки естесственного языка I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
        <a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week12/12-2">Глубокое Обучение для обработки естесственного языка II</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week12/12-3">Внимание и трансформер</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week13/13">⑬</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week13/13-1">Графовые нейронные сети I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week13/13-2">Графовые нейронные сети II</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week13/13-3">Графовые нейронные сети III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 14 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="{{site.baseurl}}/ru/week14/14">⑭</a></td>
      <td rowspan="2">Лекция</td>
      <td><a href="{{site.baseurl}}/ru/week14/14-1">Структурированные предсказания</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1qBu-2hYWaGYEXeX7kAU8O4S2RZ1hMjsk/">🖥️</a>
        <a href="https://youtu.be/gYayCG6YyO8">🎥</a>
      </td>
    </tr>
    <tr><td><a href="{{site.baseurl}}/ru/week14/14-2">Графические методы</a></td></tr>
    <tr>
      <td rowspan="1">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week14/14-3">Регуляризация и Байесовские нейронные сети</a></td>
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
      <td rowspan="2" align="center"><a href="{{site.baseurl}}/ru/week15/15">⑮</a></td>
      <td rowspan="2">Практикум</td>
      <td><a href="{{site.baseurl}}/ru/week15/15-1">Вывод для энергетических моделей со скрытыми переменными</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/sbhr2wjU1-I">🎥</a>
      </td>
    </tr>
    <tr>
      <td><a href="{{site.baseurl}}/ru/week15/15-2">Обучение энергетических моделей со скрытыми переменными</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/XLSb1Cs1Jao">🎥</a>
      </td>
    </tr>
  </tbody>
</table>


## People

| Должность | Фото | Контакт | О себе |
|:-----|:-----:|:--------|:------|
|Преподаватель|<img src="../images/Yann.png" width="100" height="100">|<a href="https://twitter.com/ylecun">Yann LeCun</a><br>yann@cs.nyu.edu|Silver Professor in CS at NYU<br>и лауреат Премии Тьюринга|
|Преподаватель|<img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100">|<a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br>canziani@nyu.edu|Asst. Prof. in CS at NYU|
|Ассистент|<img src="../images/Mark.png" width="100" height="100">|<a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br>goldstein@nyu.edu|PhD student in CS at NYU|
|Веб-разработчик|<img src="../images/Zeming.png" width="100" height="100">|<a href="https://twitter.com/ebetica">Zeming Lin</a><br>zl2799@nyu.edu|PhD student in CS at NYU|
|Выпускник|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Serkan Karakulak <br>sk7685@nyu.edu|
|Ученик|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Raghav Jajodia <br>rj1408@nyu.edu|
|Ученик|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Priyank Pathak <br>pp1953@nyu.edu|
|Ученик|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Chiao-Hsun Wang <br>chw371@nyu.edu|
|Ученик|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Pedro Vidal<br>pmh314@nyu.edu|
|Ученик|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Bixing Yan <br>by783@nyu.edu|
