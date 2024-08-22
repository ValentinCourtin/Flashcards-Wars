class Training < ApplicationRecord
  belongs_to :user
  belongs_to :subcategory
  has_many :training_answers

  has_many :questions, through: :subcategory
# si ça pète, enlever le has many through question mais bien garder les dependent
  has_many :questions, through: :training_answers, source: :question, dependent: :destroy

  after_create :create_training_answer

  private

  def create_training_answer
    subcategory.questions.each do |question|
      TrainingAnswer.create(
        training: self,
        question: question,
        count_try: 0,
        solved: false
      )
    end
  end

end
