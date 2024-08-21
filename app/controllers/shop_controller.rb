class ShopController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user




    
  end


  def Buy
    puts "hello"

  end





end
