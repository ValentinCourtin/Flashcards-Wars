class Training < ApplicationRecord
  belongs_to :user
  belongs_to :subcategory
  has_many :training_answers
  has_many :questions, through: :training_answers, source: :question, dependent: :destroy
end
