class AddInventoryIdToDuels < ActiveRecord::Migration[7.1]
  def change
    add_reference :duels, :inventory, null: true, foreign_key: true
  end
end
