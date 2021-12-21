<?php
use yii\helpers\Url;

return [
    [
        'class' => 'kartik\grid\CheckboxColumn',
        'width' => '50px',
    ],
    [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '40px',
    ],
        // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'id',
    // ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'name',
        'width' => '600px',
        'format'=>'raw',
        'value' => function($model){
            return yii\helpers\Html::a($model->name, ['view', 'id' => $model->id], [
                'title' => Yii::t('app', 'Lihat Profil'),
                'data-toggle'=>'tooltip',
                'data-placement'=>'right',
                'data-pjax'=> 0 /*,'target'=>'_blank' */,
                'role'=>'modal-remote',
            ]);
        },
    ],
    [
        'class' => 'kartik\grid\ActionColumn',
        'dropdown' => false,
        'header'=>false,
        'vAlign'=>'middle',
        'template' => '{delete}' ,
        'options' => ['style' => 'width:5%;'],
        'buttons' => [
            'update' => function ($url, $model) {
                return yii\helpers\Html::a('<i class="fa fa-gears"></i>', ['delete', 'id' => $model->id], [
                    'title' => Yii::t('app', 'Delete Occupation '),
                    'data-toggle'=>'tooltip',
                    'data-placement'=>'right',
                    'data-pjax'=> 0 /*,'target'=>'_blank' */,
                    'role'=>'modal-remote',
                ]);
            },
        ],
        'urlCreator' => function($action, $model, $key, $index) {
            return Url::to([$action,'id'=>$key]);
        },
    ],

];   