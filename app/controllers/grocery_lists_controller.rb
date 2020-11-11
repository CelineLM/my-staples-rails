class GroceryListsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @grocery_list = current_user.group.grocery_list
    authorize @grocery_list
  end
end
