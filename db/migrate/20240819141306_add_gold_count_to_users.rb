class AddGoldCountToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :gold_count, :integer
  end
end
