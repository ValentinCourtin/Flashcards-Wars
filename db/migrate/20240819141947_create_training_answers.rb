class CreateTrainingAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :training_answers do |t|
      t.integer :count_try
      t.boolean :solved
      t.references :training, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
