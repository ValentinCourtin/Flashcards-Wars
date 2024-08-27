class AddSuccessToRoundQuestionAnswers < ActiveRecord::Migration[7.1]
  def change
    add_column :round_question_answers, :success, :boolean, default: false
  end
end
