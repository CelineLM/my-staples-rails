class MyStaplesController < ApplicationController
  def index
    @grocery_list = current_user.group.grocery_lists.first
    @my_staples = @grocery_list.my_staples
  end

  def create
  end

  def destroy
  end
end
