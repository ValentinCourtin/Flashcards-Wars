class Duel < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, foreign_key: 'opponent_id', class_name: 'User'
end
