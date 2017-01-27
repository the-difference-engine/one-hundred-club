class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  def custom_authenticate_user!
    unless current_user
      redirect_to '/'
    end
  end

end
