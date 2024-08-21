class TrainingsController < ApplicationController

  def index
    @trainings = current_user.trainings

  end

  def show

  end

  def play

  end

    def finished
    @training = Training.all
  end

end
