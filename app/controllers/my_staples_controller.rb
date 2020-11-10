class MyStaplesController < ApplicationController
  def index
    @grocery_list = current_user.group.grocery_lists.first
    @my_staples = @grocery_list.my_staples
    @my_staple = MyStaple.new
    authorize @my_staples
  end

  def create
    @my_staple = MyStaple.new(my_staple_params)
    @grocery_list = current_user.group.grocery_lists.first
    @my_staple.grocery_list = @grocery_list
    authorize @my_staple
    if @my_staple.save
      redirect_to grocery_list_my_staples_path(@grocery_list)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def my_staple_params
    params.require(:my_staple).permit(:staple_id, :quantity_id, :grocery_list_id)
  end
end
