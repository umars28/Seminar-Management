<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\bootstrap\Modal;
use kartik\grid\GridView;
use johnitvn\ajaxcrud\CrudAsset;
use johnitvn\ajaxcrud\BulkButtonWidget;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AssetSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Participant Management';
$this->params['breadcrumbs'][] = $this->title;

CrudAsset::register($this);

?>
<div class="asset-index">
    <div id="ajaxCrudDatatable">
        <?=GridView::widget([
            'id'=>'crud-datatable',
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'pjax'=>true,
            'columns' => require(__DIR__.'/_columns.php'),
            'toolbar'=> [
                ['content'=>
                    Html::a('<i class="glyphicon glyphicon-plus"></i> Add', ['create'],
                        ['role'=>'modal-remote','title'=> 'Create new Participant','class'=>'btn btn-success']).
                    Html::a('<i class="glyphicon glyphicon-repeat"></i>', [''],
                        ['data-pjax'=>1, 'class'=>'btn btn-default', 'title'=>'Reset Grid']).
                    '{toggleData}'.
                    '{export}'
                ],
            ],
            'striped' => true,
            'condensed' => true,
            'responsive' => true,
            'panel' => [
                'type' => 'default',
                'heading' => '<i class="glyphicon glyphicon-list"></i> Participant listing',
                'before'=> Html::a('<i class="glyphicon glyphicon-plus"></i> Add', ['create'],
                    ['data-pjax'=>0,'title'=> 'Create new Participants','class'=>'btn btn-default']),

                'after'=>BulkButtonWidget::widget([
                        'buttons'=>Html::a('<i class="glyphicon glyphicon-trash"></i>&nbsp; Delete All',
                            ["bulk-delete"] ,
                            [
                                "class"=>"btn btn-danger btn-xs",
                                'role'=>'modal-remote-bulk',
                                'data-confirm'=>false, 'data-method'=>false,// for overide yii data api
                                'data-request-method'=>'post',
                                'data-confirm-title'=>'Are you sure?',
                                'data-confirm-message'=>'Are you sure want to delete this item'
                            ]),
                    ]).
                    '<div class="clearfix"></div>',
            ]
        ])?>
    </div>
</div>
<?php Modal::begin([
    "id"=>"ajaxCrudModal",
    "footer"=>"",// always need it for jquery plugin
])?>
<?php Modal::end(); ?>
