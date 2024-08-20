class QuestionsController < ApplicationController
  def show
    @question =Question.find(param[:id])
    @possibilities = Possibilities.where(question_id: @questions.id)
  end
end
