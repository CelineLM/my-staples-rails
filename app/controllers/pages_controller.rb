class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      @grocery_list = current_user.group.grocery_list
    end
  end
end
