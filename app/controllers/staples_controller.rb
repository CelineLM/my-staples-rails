class StaplesController < ApplicationController
  before_action :set_grocery_list

  def new
    @staple = Staple.new
    authorize @staple
  end

  def create
    @staple = Staple.new(staple_params)
    authorize @staple
    if @staple.save
      redirect_to grocery_list_my_staples_path(@grocery_list)
    else
      render :new
    end
  end

  private

  def set_grocery_list
    @grocery_list = current_user.group.grocery_list
  end

  def staple_params
    params.require(:staple).permit(:name, :category_id)
  end
end
