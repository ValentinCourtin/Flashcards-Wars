class UsersController < ApplicationController

  # before_action :set_user
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # GET /show/1
  def show
    @user = current_user

    @level = @user.level

    @username = " #{@user.first_name.capitalize} #{@user.last_name[0].upcase}."


    @users = User.all
    @users_ordered = @users.order(experience: :desc)
    @rank = @users_ordered.index(current_user) + 1
  end

  def rank
    @user = current_user
    @users = User.all
    @users_ordered = @users.order(experience: :desc)
  end

  def profil
    @user = current_user
  end

  # def create
  #   super
  #   current_user.first_name
  # end


  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  # end
end
