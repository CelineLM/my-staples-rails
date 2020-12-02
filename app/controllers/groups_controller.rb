class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    authorize @group
  end

  private

  def generate_url_with_params(params = {})
    uri = URI('http://localhost:3000/users/sign_up')
    uri.query = params.to_query
    uri.to_s
  end
end
