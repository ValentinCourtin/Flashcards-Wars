class AddOpponentScoreToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :opponent_score, :integer
  end
end
