class CreateGroceryLists < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_lists do |t|
      t.string :name
      t.text :comment
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
