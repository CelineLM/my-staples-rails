class MyStaplesController < ApplicationController
  before_action :set_my_staple, only: [:update, :destroy]
  before_action :set_grocery_list

  def index
    @my_staples = @grocery_list.my_staples
    @my_staple = MyStaple.new
    authorize @my_staples
  end

  def create
    @my_staple = MyStaple.new(my_staple_params)
    @my_staple.grocery_list = @grocery_list
    authorize @my_staple
    @my_staple.save
    redirect_to grocery_list_my_staples_path(@grocery_list)
  end

  def update
    # update my_staple from two different views:
    if params[:my_staple][:quantity_id].empty? # grocery_lists#show 
      @my_staple.update(quantity: Quantity.first)
      redirect_to grocery_list_path(@grocery_list)
    else # my_staples#index
      @my_staple.update(my_staple_params)
      redirect_to grocery_list_my_staples_path(@grocery_list)
    end
  end

  def destroy
    @my_staple.destroy
    redirect_to grocery_list_my_staples_path(@grocery_list)
  end

  private

  def set_grocery_list
    @grocery_list = current_user.group.grocery_list
  end

  def set_my_staple
    @my_staple = MyStaple.find(params[:id])
    authorize @my_staple
  end

  def my_staple_params
    params.require(:my_staple).permit(:staple_id, :quantity_id, :grocery_list_id)
  end
end
