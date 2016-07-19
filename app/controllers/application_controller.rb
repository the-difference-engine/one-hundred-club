class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def has_access_to_edit_member_form!
    binding.pry
    unless current_user || current_user.member_access
      redirect_to '/' 
    end
  end
end
