class CreatePossibilities < ActiveRecord::Migration[7.1]
  def change
    create_table :possibilities do |t|
      t.text :content
      t.boolean :correct
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
