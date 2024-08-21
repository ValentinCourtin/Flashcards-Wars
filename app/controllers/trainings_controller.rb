class TrainingsController < ApplicationController

  def index
    @trainings = current_user.trainings
    @subcategories = Subcategory.all
    @Locked_missions_count = @subcategories.count - @trainings.count
  end

  def show
    @training = Training.find(params[:id])
  end

  def play
    @training = Training.find(params[:training_id])
    @questions = @training.questions
    @question = @questions.first
    @possibilities = @question.possibilities
  end

    def finished
    @training = Training.all
  end

end
