class UsersController < ApplicationController
  def index
    @user = User.all
    render 'index.html.erb'
  end
end
