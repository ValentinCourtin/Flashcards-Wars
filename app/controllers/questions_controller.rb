class QuestionsController < ApplicationController
  def show

    @question = Question.find(params[:id])
    @possibilities = Possibility.where(question_id: @questions.id)

  end
end
