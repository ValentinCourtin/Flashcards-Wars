class TrainingsController < ApplicationController

  def index
    @trainings = current_user.trainings
    @subcategories = Subcategory.all
    @Locked_missions_count = @subcategories.count - @trainings.count
  end

  def show

  end

  def play

  end

    def finished
    @training = Training.all
  end

end
