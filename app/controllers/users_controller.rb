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
    user = User.find_by(id: params[:id])

    user.update(
      user_access: params[:user_access],
      blog_access: params[:blog_access],
      events_access: params[:events_access],
      fallen_hero_access: params[:fallen_hero_access],
      member_access: params[:member_access],
      donation_access: params[:donation_access],
      reporting_access: params[:user_access]
    )
    
    redirect_to '/users/#{@user.id}'
  end
end
