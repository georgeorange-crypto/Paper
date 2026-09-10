---
layout: default
title: التعلم العميق
author: Alfredo Canziani
lang-ref: home
lang: ar
translation-date: 21 Aug 2020
translator: Anass Elhoud
---

**DS-GA 1008 · ربيع 2020 · [مركز جامعة نيويورك لعلم البيانات](http://cds.nyu.edu/)**

| المدرسين               | Yann LeCun و Alfredo Canziani |
| المحاضرات    | كل إثنين 16:55 – 18:35، [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| التدريب   | كل ثلاثاء 19:10 – 20:00، [GCASL C95](http://library.nyu.edu/services/campus-media/classrooms/gcasl-c95/) |
| المنتدى                  | [r/NYU_DeepLearning](https://www.reddit.com/r/NYU_DeepLearning/) |
| المواد    | [Google Drive](https://bitly.com/DLSP20)، [Notebooks](https://github.com/Atcold/pytorch-Deep-Learning) |


## وصف عام

تتمحور هذه الدورة عن أحدث التقنيات في التعلم العميق والتعلم التمثيلي، مع التركيز على التعلم العميق بإشراف وبدون إشراف، طرق التضمين، والتعلم المتري، والشبكات الالتفافية والتكرارية، مع تطبيقات في مجال الرؤية الحاسوبية (Computer Vision)، وفهم اللغة الطبيعية، والتعرف على الكلام. المتطلبات الأساسية تشمل:
 [DS-GA 1001 مقدمة لعلم البيانات](https://cds.nyu.edu/academics/ms-curriculum/) أو دورة تعلم الآلة على مستوى الدراسات العليا.

## المحاضرات

**عنوان تفسيري**: 🖥 الشرائح، 📓 Jupyter notebook، 🎥 فيديو يوتيوب.

<table>
<!-- =============================== HEADER ================================ -->
  <thead>
    <tr>
      <th>الأسبوع</th>
      <th align="left">الشكل</th>
      <th align="left">العنوان</th>
      <th align="left">الموارد التعليمية</th>
    </tr>
  </thead>
  <tbody>
<!-- =============================== WEEK 1 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week01/01">①</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week01/01-1">التاريخ والدوافع</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Q7LtZyIS1f3TfeTGll3aDtWygh3GAfCb">🖥️</a>
        <a href="https://www.youtube.com/watch?v=0bMe_vCZo30">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week01/01-2">التطور والتعلم العميق</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week01/01-3"> الشبكات العصبية (NN، Neural nets)</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/01-tensor_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/02-space_stretching.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=5_qrxVq1kvc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 2 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week02/02">②</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week02/02-1">الانحدار التدريجي العشوائي والانتشار الخلفي</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1w2jV_BT2hWzfOKBR02x_rB4-dfVUI6SR">🖥️</a>
        <a href="https://www.youtube.com/watch?v=d9vdh3b787Y">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week02/02-2">تطبيق حول الانتشار الخلفي</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week02/02-3">تطبيق حول الشبكات العصبية</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/01%20-%20Spiral%20classification.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/04-spiral_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/05-regression.ipynb">📓</a>
        <a href="https://www.youtube.com/watch?v=WAn6lip5oWk">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 3 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week03/03">③</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week03/03-1">تحويل المعامل المتغير</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=18UFaOGNKKKO5TYnSxr2b8dryI-PgZQmC">🖥️</a>
        <a href="https://youtu.be/FW5gFiJb-ig">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week03/03-2">الشبكات العصبية الالتفافية CNN</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week03/03-3">خصائص الإشارات الطبيعية</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/02%20-%20CNN.pdf">🖥</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/06-convnet.ipynb">📓</a>
        <a href="https://youtu.be/kwPWpVverkw">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 4 ================================ -->
    <tr>
      <td rowspan="1" align="center"><a href="en/week04/04">④</a></td>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week04/04-1">التفاف أحادي البعد 1D</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/07-listening_to_kernels.ipynb">📓</a>
        <a href="https://youtu.be/OrBEon3VlQg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 5 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week05/05">⑤</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week05/05-1">تحسين I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1pwlGN6hDFfEYQqBqcMjWbe4yfBDTxsab">🖥️</a>
        <a href="https://youtu.be/--NZb480zlg">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week05/05-2">تحسين II</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week05/05-3">الشبكات العصبية الالتفافية autograd</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/03-autograd_tutorial.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/extra/b-custom_grads.ipynb">📓</a>
        <a href="https://youtu.be/eEzCZnOFU1w">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 6 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week06/06">⑥</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week06/06-1">تطبيقات الشبكات العصبية الالتفافية</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1opT7lV0IRYJegtZjuHsKhlsM5L7GpGL1">🖥️</a>
        <a href="https://drive.google.com/open?id=1sdeVBC3nuh5Zkm2sqzdScEicRvLc_v-F">🖥️</a>
        <a href="https://youtu.be/ycbMGyCPzvE">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week06/06-2">الشبكات العصبية التكرارية واهتماماتها</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week06/06-3">تطبيق حول الشبكات العصبية التكرارية</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/04%20-%20RNN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/08-seq_classification.ipynb">📓</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/09-echo_data.ipynb">📓</a>
        <a href="https://youtu.be/8cAffg2jaT0">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 7 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week07/07">⑦</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week07/07-1">النماذج القائمة على الطاقة</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1z8Dz1YtkOEJpU-gh5RIjORs3GGqkYJQa">🖥️</a>
        <a href="https://youtu.be/tVwV14YkbYs">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week07/07-2">SSL، EBM</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week07/07-3">المشفرات التلقائية</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/10-autoencoder.ipynb">📓</a>
        <a href="https://youtu.be/bggWQ14DD9M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 8 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week08/08">⑧</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week08/08-1">الطرق التفابلية</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1Zo_PyBEO6aNt0GV74kj8MQL7kfHdIHYO">🖥️</a>
        <a href="https://youtu.be/ZaVP2SY23nc">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week08/08-2">الكامن المنظم</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week08/08-3">Training VAEs</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/11-VAE.ipynb">📓</a>
        <a href="https://youtu.be/7Rb4s9wNOmc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 9 ================================ -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week09/09">⑨</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week09/09-1">التناثر</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=1wJRzhjSqlrSqEpX4Omagb_gdIkQ5f-6K">🖥️</a>
        <a href="https://youtu.be/Pgct8PKV7iw">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week09/09-2">شبكات الخصومية التوليدية GANs</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week09/09-3">  تدريب حول شبكات الخصومية التوليدية</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/05%20-%20Generative%20models.pdf">🖥️</a>
        <a href="https://github.com/pytorch/examples/tree/master/dcgan">📓</a>
        <a href="https://youtu.be/xYc11zyZ26M">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 10 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week10/10">⑩</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week10/10-1">الرؤية الحاسوبية I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/open?id=16lsnDN2HIBTcRucbVKY5B_U16c0tNQhR">🖥️</a>
        <a href="https://youtu.be/0KeR6i1_56g">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week10/10-2">الرؤية الحاسوبية II</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week10/10-3">التحكم التنبؤي</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/09%20-%20Controller%20learning.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/14-truck_backer-upper.ipynb">📓</a>
        <a href="https://youtu.be/A3klBqEWR-I">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 11 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week11/11">⑪</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week11/11-1">التفعيل</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1AzFVLG7D4NK6ugh60f0cJQGYF5OL2sUB">🖥️</a>
        <a href="https://drive.google.com/file/d/1rkiZy0vjZqE2w7baVWvxwfAGae0Eh1Wm">🖥️</a>
        <a href="https://drive.google.com/file/d/1tryOlVAFmazLLZusD2-UfReFMkPk5hPk">🖥️</a>
        <a href="https://youtu.be/bj1fh3BvqSU">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week11/11-2">الخسائر</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week11/11-3">PPUU</a></td>
      <td>
        <a href="http://bit.ly/PPUU-slides">🖥️</a>
        <a href="http://bit.ly/PPUU-code">📓</a>
        <a href="https://youtu.be/VcrCr-KNBHc">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 12 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week12/12">⑫</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week12/12-1">التعلم العميق في معالجة اللغة الطبيعية I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/149m3wRavTp4DQZ6RJTej8KP8gv4jnkPW/">🖥️</a>
        <a href="https://youtu.be/6D4EWKJgNn0">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week12/12-2">التعلم العميق في معالجة اللغة الطبيعية II</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week12/12-3">المحول</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/10%20-%20Attention%20%26%20transformer.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/15-transformer.ipynb">📓</a>
        <a href="https://youtu.be/f01J0Dri-6k">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 13 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week13/13">⑬</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week13/13-1">GCNs I</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1oq-nZE2bEiQjqBlmk5_N_rFC8LQY0jQr/">🖥️</a>
        <a href="https://youtu.be/Iiv9R6BjxHM">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week13/13-2">GCNs II</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week13/13-3">GCNs III</a></td>
      <td>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/11%20-%20GCN.pdf">🖥️</a>
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/16-gated_GCN.ipynb">📓</a>
        <a href="https://youtu.be/2aKXWqkbpWg">🎥</a>
      </td>
    </tr>
<!-- =============================== WEEK 14 =============================== -->
    <tr>
      <td rowspan="3" align="center"><a href="en/week14/14">⑭</a></td>
      <td rowspan="2">محاضرة</td>
      <td><a href="en/week14/14-1">التنبؤ المنظم</a></td>
      <td rowspan="2">
        <a href="https://drive.google.com/file/d/1qBu-2hYWaGYEXeX7kAU8O4S2RZ1hMjsk/">🖥️</a>
        <a href="https://youtu.be/gYayCG6YyO8">🎥</a>
      </td>
    </tr>
    <tr><td><a href="en/week14/14-2">طرق رسومية</a></td></tr>
    <tr>
      <td rowspan="1">تطبيق عملي</td>
      <td><a href="en/week14/14-3">التنظيم والبايزية</a></td>
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
      <td rowspan="2" align="center"><a href="en/week15/15">⑮</a></td>
      <td rowspan="2">تطبيق عملي</td>
      <td><a href="en/week15/15-1">الاستدلال عن المتغير الكامن EBMs</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/sbhr2wjU1-I">🎥</a>
      </td>
    </tr>
    <tr>
      <td><a href="en/week15/15-2">تدريب المتغير الكامن EBMs</a></td>
      <td rowspan="1">
        <a href="https://github.com/Atcold/pytorch-Deep-Learning/blob/master/slides/12%20-%20EBM.pdf">🖥️</a>
        <a href="https://youtu.be/XLSb1Cs1Jao">🎥</a>
      </td>
    </tr>
  </tbody>
</table>


## المجموعة

| وظيفة | صورة | تواصل | معلومات |
|:-----|:-----:|:--------|:------|
|مدرس|<img src="../images/Yann.png" width="100" height="100">|<a href="https://twitter.com/ylecun">Yann LeCun</a><br>yann@cs.nyu.edu|أستاذ فضي في علوم الكمبيوتر بجامعة نيويورك<br>والفائز بجائزة تورينج|
|مدرس|<img src="https://avatars1.githubusercontent.com/u/2119355" width="100" height="100">|<a href="https://twitter.com/alfcnz">Alfredo Canziani</a><br>canziani@nyu.edu|أستاذ مساعد في علوم الكمبيوتر بجامعة نيويورك|
|مساعد|<img src="../images/Mark.png" width="100" height="100">|<a href="https://twitter.com/marikgoldstein">Mark Goldstein</a><br>goldstein@nyu.edu|طالب دكتوراه في علوم الكمبيوتر بجامعة نيويورك|
|مشرف الموقع|<img src="../images/Zeming.png" width="100" height="100">|<a href="https://twitter.com/ebetica">Zeming Lin</a><br>zl2799@nyu.edu|طالب دكتوراه في علوم الكمبيوتر بجامعة نيويورك|

<!-- |ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Serkan Karakulak <br>sk7685@nyu.edu|
|ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Raghav Jajodia <br>rj1408@nyu.edu|
|ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Priyank Pathak <br>pp1953@nyu.edu|
|ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Chiao-Hsun Wang <br>chw371@nyu.edu|
|ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Pedro Vidal<br>pmh314@nyu.edu|
|ممهد|<img src="https://st3.depositphotos.com/13159112/17145/v/450/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg" width="100" height="100">|Bixing Yan <br>by783@nyu.edu| -->

