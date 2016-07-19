class UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.html.erb'
  end
end
