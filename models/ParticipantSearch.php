<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Participant;

/**
 * ParticipantSearch represents the model behind the search form about `app\models\Participant`.
 */
class ParticipantSearch extends Participant
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'education_id', 'occupation_id'], 'integer'],
            [['name', 'email', 'phone', 'address', 'birth_date', 'sex'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Participant::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'education_id' => $this->education_id,
            'occupation_id' => $this->occupation_id,
            'birth_date' => $this->birth_date,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'phone', $this->phone])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'sex', $this->sex]);

        return $dataProvider;
    }
}
