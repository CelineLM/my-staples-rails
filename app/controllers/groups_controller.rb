class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @url = generate_url({id: @group.id})
    authorize @group
  end

  private

  def generate_url(params = {})
    uri = URI('http://localhost:3000/users/sign_up')
    uri.query = params.to_query
    uri
  end
end
