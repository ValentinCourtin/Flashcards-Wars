class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @possibilities = Possibility.where(question_id: @question.id)
    @subcategory = @question.subcategory

    @next_question = @subcategory
  end
end
