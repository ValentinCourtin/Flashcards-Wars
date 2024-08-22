class AddPleasurToTrainingsAnswer < ActiveRecord::Migration[7.1]
  def change
    add_column :trainings, :pleasur, :boolean, default: false, null: false
  end
end
