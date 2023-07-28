class PagesController < ApplicationController
  def home
    if user_signed_in?
      @posts = current_user.posts
    else
      flash.alert = "User not found"
    end
    
  end
end
