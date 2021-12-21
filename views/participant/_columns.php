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
        'vAlign'=>'middle',
        'urlCreator' => function($action, $model, $key, $index) { 
                return Url::to([$action,'id'=>$key]);
        },
        'viewOptions'=>['role'=>'modal-remote','title'=>'View','data-toggle'=>'tooltip'],
        'updateOptions'=>['role'=>'modal-remote','title'=>'Update', 'data-toggle'=>'tooltip'],
        'deleteOptions'=>['role'=>'modal-remote','title'=>'Delete', 
                          'data-confirm'=>false, 'data-method'=>false,// for overide yii data api
                          'data-request-method'=>'post',
                          'data-toggle'=>'tooltip',
                          'data-confirm-title'=>'Are you sure?',
                          'data-confirm-message'=>'Are you sure want to delete this item'], 
    ],

];   