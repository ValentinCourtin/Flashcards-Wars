class Training < ApplicationRecord
  belongs_to :user
  belongs_to :subcategory
  has_many :training_answers
end
