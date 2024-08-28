class AddFinishedToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :finished, :boolean, default: false
  end
end
