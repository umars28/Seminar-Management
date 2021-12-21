<?php
use yii\helpers\Url;

return [
    [
        'class' => 'kartik\grid\CheckboxColumn',
        'width' => '20px',
    ],
    [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '30px',
    ],
        // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'id',
    // ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'name',
        'format'=>'raw',
        'contentOptions' => ['class' => 'text-left'],
        'headerOptions' => ['class' => 'text-center'],
        'options' => ['style' => 'width:10%;'],
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
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'email',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'phone',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'education_id',
        'label'=>'Education',
        'contentOptions' => ['class' => 'text-left'],
        'headerOptions' => ['class' => 'text-center'],
        'options' => ['style' => 'width:15%;'],
        'filter' => yii\helpers\ArrayHelper::map(\app\models\Education::find()->asArray()->all(), 'id', 'name'),
        'filterType' => \kartik\grid\GridView::FILTER_SELECT2,
        'filterWidgetOptions' => [
            'options' => ['prompt' => ''],
            'pluginOptions' => [
                'allowClear' => true,
            ],
        ],
        'value' => function($model) {
            return $model->education->name;
        }
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'occupation_id',
        'label'=>'Occupation',
        'contentOptions' => ['class' => 'text-left'],
        'headerOptions' => ['class' => 'text-center'],
        'options' => ['style' => 'width:15%;'],
        'filter' => yii\helpers\ArrayHelper::map(\app\models\Occupation::find()->asArray()->all(), 'id', 'name'),
        'filterType' => \kartik\grid\GridView::FILTER_SELECT2,
        'filterWidgetOptions' => [
            'options' => ['prompt' => ''],
            'pluginOptions' => [
                'allowClear' => true,
            ],
        ],
        'value' => function($model) {
            return $model->occupation->name;
        }
    ],
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'address',
    // ],
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'birth_date',
    // ],
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'sex',
    // ],
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
                    'title' => Yii::t('app', 'Delete Participant '),
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