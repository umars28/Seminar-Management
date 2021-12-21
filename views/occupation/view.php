<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Occupation */
?>
<div class="occupation-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'name',
        ],
    ]) ?>

</div>
