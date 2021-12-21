<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "occupation".
 *
 * @property int $id
 * @property string|null $name
 *
 * @property Participant[] $participants
 */
class Occupation extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'occupation';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            ['name', 'required', 'message' => 'Please fill the name.'],
            ['name', 'unique', 'message' => 'Name should be unique.'],
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
        ];
    }

    /**
     * Gets query for [[Participants]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getParticipants()
    {
        return $this->hasMany(Participant::className(), ['occupation_id' => 'id']);
    }
}
