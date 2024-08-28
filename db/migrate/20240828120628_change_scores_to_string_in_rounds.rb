class ChangeScoresToStringInRounds < ActiveRecord::Migration[7.1]
  def change
    change_column :rounds, :user_score, :string, default: "?"
    change_column :rounds, :opponent_score, :string, default: "?"
  end
end
