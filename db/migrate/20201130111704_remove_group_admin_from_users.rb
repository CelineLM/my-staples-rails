class RemoveGroupAdminFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :group_admin
  end
end
