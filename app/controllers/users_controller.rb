class UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.html.erb'
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @user = User.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @user = User.find_by(id: params[:id])
    redirect_to '/users/#{@user.id}'
  end
end
