class AddOpponentFinishedToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :opponent_finished, :boolean, default: false
  end
end
