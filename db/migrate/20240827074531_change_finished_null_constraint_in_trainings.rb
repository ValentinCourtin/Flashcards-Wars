class ChangeFinishedNullConstraintInTrainings < ActiveRecord::Migration[7.1]
  def change
    change_column :trainings, :finished, :boolean, default: false
    change_column :training_answers, :solved, :boolean, default: false

  end
end
