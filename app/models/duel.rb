class Duel < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, foreign_key: 'opponent_id', class_name: 'User'

  after_create :create_round

  private

  def create_round
    2.times do
      @subcategory = User.find(user_id).trainings.sample.subcategory
      Round.create(
          duel: self,
          subcategory: @subcategory
      )
    end

    @subcategory_opponent = User.find(opponent_id).trainings.sample.subcategory
    Round.create(
      duel: self,
      subcategory: @subcategory_opponent
    )
  end
end
