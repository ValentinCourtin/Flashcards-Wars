class TrainingsController < ApplicationController

  def index
    @trainings = current_user.trainings

  end

  def show
    @training = Training.find(params[:id])
  end

  def play

  end

    def finished
    @training = Training.all
  end

end
