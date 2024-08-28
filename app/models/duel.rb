class Duel < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, foreign_key: 'opponent_id', class_name: 'User'
  belongs_to :inventory, optional: true
  has_one :item, through: :inventory
  has_many :rounds
  has_many :round_question_answers, through: :rounds

  after_create :create_round
  after_create :create_round_question_answers

  private

  def create_round
    2.times do
      subcategory = User.find(user_id).trainings.sample.subcategory
      Round.create(
        duel: self,
        subcategory: subcategory
      )
    end
    subcategory_opponent = User.find(opponent_id).trainings.sample.subcategory
    Round.create(
      duel: self,
      subcategory: subcategory_opponent
    )
  end

  def create_round_question_answers
    Round.where(duel: self).each do |round|
      3.times do
        question = round.subcategory.questions.sample
        RoundQuestionAnswer.create(
          user: User.find(user_id),
          question: question,
          round: round,
          solved: false,
          timer: 0
        )
        RoundQuestionAnswer.create(
          user: User.find(opponent_id),
          question: question,
          round: round,
          solved: false,
          timer: 0
        )
      end
    end
  end
end
