<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Participant */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="participant-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, "education_id")->widget(kartik\select2\Select2::classname(), [
        'data' => yii\helpers\ArrayHelper::map(\app\models\Education::find()->asArray()->all(), 'id', 'name'),
        'pluginOptions' => [
            'placeholder' => '',
            'allowClear' => false,
            'data-search '=>true,
            'formatNoMatches' => null, //no message in search
        ],
    ])->label('Education'); ?>

    <?= $form->field($model, "occupation_id")->widget(kartik\select2\Select2::classname(), [
        'data' => yii\helpers\ArrayHelper::map(\app\models\Occupation::find()->asArray()->all(), 'id', 'name'),
        'pluginOptions' => [
            'placeholder' => '',
            'allowClear' => false,
            'data-search '=>true,
            'formatNoMatches' => null, //no message in search
        ],
    ])->label('Occupation'); ?>

    <?= $form->field($model, 'address')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'birth_date')->widget(kartik\date\DatePicker::classname(), [
        'options' => ['placeholder' => ''],
        'pluginOptions' => [
            'autoclose'=>true,
            'format' => 'yyyy-mm-dd'
        ]
    ]);
    ?>

    <?= $form->field($model, 'sex')->radioList( ['Pria' => 'Pria', 'Wanita' => 'Wanita'] ); ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
