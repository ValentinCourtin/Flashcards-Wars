class InventoriesController < ApplicationController

  def edit
  end

  def update
  end

  def delete
  end

  def myitems
    @inventories = Inventory.where(user: current_user)
  end
end
