class Question < ApplicationRecord
  belongs_to :subcategory
  has_many :possibilities
  has_one :training_answer

  # On crée une methode qu'on appel sur une instance de question
  def solution
    # On prends toute les possiblité vrai de la question et on renvoi
    # la premiere
    possibilities.where(correct: true).first
  end
end
