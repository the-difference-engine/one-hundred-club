class UserPermissionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @user = User.where("email = ?", params[:email])
    @user_permission = UserPermission.find_or_create_by(user_id: @user.ids.first)
    @user_permission.update(
      user_id: @user.ids.first,
      super_admin: params[:super_admin],
      admin: params[:admin],
      content: params[:content]
    )

    flash[:success] = "User Permissions have saved!"
    redirect_to '/'
  end
end
