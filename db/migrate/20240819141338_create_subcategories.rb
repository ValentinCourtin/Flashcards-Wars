class CreateSubcategories < ActiveRecord::Migration[7.1]
  def change
    create_table :subcategories do |t|
      t.text :content
      t.string :name
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
