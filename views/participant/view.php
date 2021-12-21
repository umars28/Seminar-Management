<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Participant */
?>
<div class="participant-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'email:email',
            'phone',
            'education.name',
            'occupation.name',
            'address:ntext',
            'birth_date',
            'sex',
        ],
    ]) ?>

</div>
