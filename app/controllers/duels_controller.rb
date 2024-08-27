class DuelsController < ApplicationController
  def index
    @duels = current_user.duels
  end

  def show
    # @duel = Duel.find(params[:id])
  end

  # def choice
  #   @users = User.all
  #   @user = current_user
  # end

  def opponent_choice
    @user = current_user
    @users = User.all.collect { |user| [user.first_name, user.id] }
  end

  def create
    @opponent = User.find(params[:user_id])
    @duel = Duel.create(
      user: current_user,
      opponent: @opponent
    )
    redirect_to duel_path(@duel)
  end
end
