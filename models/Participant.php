<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "participant".
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $email
 * @property string|null $phone
 * @property int $education_id
 * @property int $occupation_id
 * @property string|null $address
 * @property string|null $birth_date
 * @property string|null $sex
 *
 * @property Education $education
 * @property Occupation $occupation
 */
class Participant extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'participant';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['education_id', 'occupation_id'], 'required'],
            [['education_id', 'occupation_id'], 'integer'],
            [['address'], 'string'],
            [['birth_date'], 'safe'],
            [['name', 'email', 'phone'], 'string', 'max' => 150],
            [['name', 'phone'], 'required'],
            ['email', 'required', 'message' => 'Please fill the email.'],
            ['email', 'email', 'message' => 'Email not valid.'],
            ['email', 'unique', 'message' => 'Email has been registered.'],
            [['sex'], 'string', 'max' => 45],
            [['sex'], 'required'],
            [['education_id'], 'exist', 'skipOnError' => true, 'targetClass' => Education::className(), 'targetAttribute' => ['education_id' => 'id']],
            [['occupation_id'], 'exist', 'skipOnError' => true, 'targetClass' => Occupation::className(), 'targetAttribute' => ['occupation_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'email' => 'Email',
            'phone' => 'Phone',
            'education_id' => 'Education ID',
            'occupation_id' => 'Occupation ID',
            'address' => 'Address',
            'birth_date' => 'Birth Date',
            'sex' => 'Sex',
        ];
    }

    /**
     * Gets query for [[Education]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getEducation()
    {
        return $this->hasOne(Education::className(), ['id' => 'education_id']);
    }

    /**
     * Gets query for [[Occupation]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getOccupation()
    {
        return $this->hasOne(Occupation::className(), ['id' => 'occupation_id']);
    }
}
