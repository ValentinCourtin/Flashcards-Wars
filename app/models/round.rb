class Round < ApplicationRecord
  belongs_to :duel
  belongs_to :subcategory

  has_many :round_question_answers
  has_many :questions, through: :round_question_answers
end
