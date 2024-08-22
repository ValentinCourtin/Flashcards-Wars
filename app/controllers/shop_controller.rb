class ShopController < ApplicationController

  def index
    @items = current_user.items
    @user = current_user
  end
end


# def Buy
#   puts "hello"

# end


# def test
#   if
# end
