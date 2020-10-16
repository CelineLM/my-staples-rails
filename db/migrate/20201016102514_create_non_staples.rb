class CreateNonStaples < ActiveRecord::Migration[6.0]
  def change
    create_table :non_staples do |t|
      t.string :name
      t.references :grocery_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
