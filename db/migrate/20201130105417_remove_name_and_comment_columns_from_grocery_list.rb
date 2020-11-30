class RemoveNameAndCommentColumnsFromGroceryList < ActiveRecord::Migration[6.0]
  def change
    remove_columns :grocery_lists, :name, :comment
  end
end
