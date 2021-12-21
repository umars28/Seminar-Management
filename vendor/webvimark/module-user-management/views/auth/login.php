<?php
/**
 * @var $this yii\web\View
 * @var $model webvimark\modules\UserManagement\models\forms\LoginForm
 */

use webvimark\modules\UserManagement\components\GhostHtml;
use webvimark\modules\UserManagement\UserManagementModule;
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
?>

<div class="login-box">
    <div class="login-logo">
        <a href="#">Login</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <?php $form = ActiveForm::begin([
            'id'      => 'login-form',
            'options'=>['autocomplete'=>'off'],
            'validateOnBlur'=>false,
            'fieldConfig' => [
                'template'=>"{input}\n{error}",
            ],
        ]) ?>

        <div class="form-group has-feedback">
            <?php echo $form->field($model, 'username', ['inputOptions' => ['autofocus' => 'autofocus','placeholder' => "Enter Your Username"]])->label(false); ?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <?php echo $form->field($model, 'password', ['inputOptions' => ['placeholder' => "Enter Your Password"]])->passwordInput(['maxlength' => 255, 'autocomplete'=>'off'])->label(false); ?>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
            <div class="col-xs-6">
                <?= (isset(Yii::$app->user->enableAutoLogin) && Yii::$app->user->enableAutoLogin) ? $form->field($model, 'rememberMe')->checkbox(['value'=>true]) : '' ?>
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
                <?= Html::submitButton(
                    UserManagementModule::t('front', 'Sign In'),
                    ['class' => 'btn btn-primary btn-block btn-flat']
                ) ?>
            </div>
            <!-- /.col -->
        </div>
        <?php ActiveForm::end() ?>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
                Google+</a>
        </div>
        <!-- /.social-auth-links -->


        <?= GhostHtml::a(UserManagementModule::t('front', "Register a new membership"),['/user-management/auth/registration']) ?><br>
        <?= GhostHtml::a(UserManagementModule::t('front', "I forgot my password"),['/user-management/auth/password-recovery']) ?>
    </div>
    <!-- /.login-box-body -->
</div>