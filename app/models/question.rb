class Question < ApplicationRecord
  belongs_to :subcategory
  has_many :possibilities
  has_one :training_answer
end
