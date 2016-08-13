class StaticPagesController < ApplicationController
  def home
    # news - last 2 by created date
    
    # events - date >= today - limit 4

    render 'home.html.erb'
  end
end