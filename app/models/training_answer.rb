class TrainingAnswer < ApplicationRecord
  belongs_to :training
  belongs_to :question
end
