class UsersController < ApplicationController

  # before_action :set_user

  # GET /show/1
  def show
    @user = current_user
  end

  def rank
    # @user = current_user
    @users = User.all
    @users_ordered = @users.order(experience: :desc)

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
