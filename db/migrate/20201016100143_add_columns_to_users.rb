class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :group_admin, :boolean
    add_reference  :users, :group, foreign_key: true
  end
end
