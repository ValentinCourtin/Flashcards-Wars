class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.text :explication
      t.references :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
