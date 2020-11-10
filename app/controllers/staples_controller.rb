class StaplesController < ApplicationController
  def new
    @staple = Staple.new
    authorize @staple
  end

  def create
    @staple = Staple.new(staple_params)
    authorize @staple
    if @staple.save
      @grocery_list = current_user.group.grocery_lists.first
      redirect_to grocery_list_my_staples_path(@grocery_list)
    else
      render :new
    end
  end

  private

  def staple_params
    params.require(:staple).permit(:name, :category_id)
  end
end
