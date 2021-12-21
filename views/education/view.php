<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Education */
?>
<div class="education-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'name',
        ],
    ]) ?>

</div>
