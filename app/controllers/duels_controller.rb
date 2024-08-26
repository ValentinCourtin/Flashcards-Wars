class DuelsController < ApplicationController
  def index
    @duels = current_user.duels
  end

  def show
    @duel = Duel.find(params[:id])
  end

  def choice
    @users = User.all
    @user = current_user
  end

  def player_choice
    @user = current_user
    @users = User.all.collect { |user| [user.first_name, user.id] }
    # @item = Item.find(params[:item_id])
    # @inventory = Inventory.find_by(user_id: @user.id, item_id: @item.id)
  end
end
