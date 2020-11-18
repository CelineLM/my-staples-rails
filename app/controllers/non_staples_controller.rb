class NonStaplesController < ApplicationController
  before_action :set_non_staple, only: :destroy
  before_action :set_grocery_list

  def create
    @non_staple = NonStaple.new(non_staple_params)
    @non_staple.grocery_list = @grocery_list
    authorize @non_staple
    @non_staple.save
    redirect_to grocery_list_path(@grocery_list)
  end

  def destroy
    @non_staple.destroy
    redirect_to grocery_list_path(@grocery_list)
  end

  private

  def set_grocery_list
    @grocery_list = current_user.group.grocery_list
  end

  def set_non_staple
    @non_staple = NonStaple.find(params[:id])
    authorize @non_staple
  end

  def non_staple_params
    params.require(:non_staple).permit(:name, :grocery_list_id)
  end

end
