class RoundQuestionAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :round
end
