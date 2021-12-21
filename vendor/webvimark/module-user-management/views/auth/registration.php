<?php

use webvimark\modules\UserManagement\UserManagementModule;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;
use yii\helpers\Html;
use webvimark\modules\UserManagement\components\GhostHtml;

/**
 * @var yii\web\View $this
 * @var webvimark\modules\UserManagement\models\forms\RegistrationForm $model
 */

$this->title = UserManagementModule::t('front', 'Registration');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="register-box">
    <div class="register-logo">
        <a href="#"><?= $this->title ?></a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Register a new membership</p>
        <?php $form = ActiveForm::begin([
            'id'=>'user',
            // 'layout'=>'horizontal',
            'validateOnBlur'=>false,
        ]); ?>

        <div class="form-group has-feedback">
            <?php echo $form->field($model, 'username', ['inputOptions' => ['autofocus' => 'autofocus','placeholder' => "Enter Your Username"]])->label(false); ?>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <?php echo $form->field($model, 'password', ['inputOptions' => ['placeholder' => "Enter Your Password"]])->passwordInput(['maxlength' => 255, 'autocomplete'=>'off'])->label(false); ?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <?php echo $form->field($model, 'repeat_password', ['inputOptions' => ['placeholder' => "Repeat Your Password"]])->passwordInput(['maxlength' => 255, 'autocomplete'=>'off'])->label(false); ?>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">

            <?= $form->field($model, 'captcha', ['inputOptions' => ['placeholder' => "Repeat Your Password"]])->widget(Captcha::className(), [
                'template' => '<div class="row"><div class="col-sm-4">{image}</div><div class="col-sm-8">{input}</div></div>',
                'captchaAction'=>['/user-management/auth/captcha']
            ])->label(false) ?>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>

        </div>

        <div class="row">
            <div class="col-xs-12">
                <?= Html::submitButton(
                    '<span class="glyphicon glyphicon-ok"></span> ' . UserManagementModule::t('front', 'Register'),
                    ['class' => 'btn btn-primary btn-block btn-flat']
                ) ?>
            </div>
            <!-- /.col -->
        </div>
        <?php ActiveForm::end(); ?>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
                Google+</a>
        </div>

        <?= GhostHtml::a(UserManagementModule::t('front', "I already have a membership"),['/user-management/auth/login']) ?>
    </div>
    <!-- /.form-box -->
</div>