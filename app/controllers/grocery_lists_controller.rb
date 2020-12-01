class GroceryListsController < ApplicationController
  def show
    @grocery_list = current_user.group.grocery_list
    @my_staples = @grocery_list.my_staples
    @ms_almost_empty = @my_staples.select { |m_s| m_s.quantity.value === 'Almost empty' }
    @ms_empty = @my_staples.select { |m_s| m_s.quantity.value === 'Empty' }
    
    @non_staples = @grocery_list.non_staples

    @non_staple = NonStaple.new
    authorize @grocery_list
  end
end
