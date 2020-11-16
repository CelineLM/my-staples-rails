class GroceryListsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @grocery_list = current_user.group.grocery_list
    @my_staples = @grocery_list.my_staples
    @ms_almost_empty = @my_staples.select { |m_s| m_s.quantity.value === 'Almost empty' }
    @ms_empty = @my_staples.select { |m_s| m_s.quantity.value === 'Empty' }
    authorize @grocery_list
  end
end
