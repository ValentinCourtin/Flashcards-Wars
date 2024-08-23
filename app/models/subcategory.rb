class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :trainings
  has_many :lessons
end
