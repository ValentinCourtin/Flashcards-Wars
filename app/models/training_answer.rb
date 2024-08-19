class TrainingAnswer < ApplicationRecord
  belongs_to :training
  belongs_to :question
  has_one :question
end
