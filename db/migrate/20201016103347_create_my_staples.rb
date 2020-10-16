class CreateMyStaples < ActiveRecord::Migration[6.0]
  def change
    create_table :my_staples do |t|
      t.references :staple, null: false, foreign_key: true
      t.references :quantity, null: false, foreign_key: true
      t.references :grocery_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
