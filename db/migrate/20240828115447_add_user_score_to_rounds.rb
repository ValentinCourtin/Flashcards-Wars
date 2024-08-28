class AddUserScoreToRounds < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :user_score, :integer
  end
end
