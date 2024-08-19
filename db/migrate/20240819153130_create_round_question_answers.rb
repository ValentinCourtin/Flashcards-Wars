class CreateRoundQuestionAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :round_question_answers do |t|
      t.integer :timer
      t.boolean :solved
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :round, null: false, foreign_key: true

      t.timestamps
    end
  end
end
