class QuestionsController < ApplicationController
  def show
    @question = Question.new
  end
end
