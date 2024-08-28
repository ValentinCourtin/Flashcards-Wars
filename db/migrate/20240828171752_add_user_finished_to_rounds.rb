class AddUserFinishedToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :user_finished, :boolean, default: false
  end
end
