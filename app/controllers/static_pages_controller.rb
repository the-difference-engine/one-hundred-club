class StaticPagesController < ApplicationController
  def home
    # news - last 3 by created date
    @recent_news = BlogPost.last(3).reverse
    
    # @future_events = Event.where('datetime >= ?', Date.today).first(4)
    @events = Event.last(2)
    @event = Event.find_by(id: params[:id])
    render 'home.html.erb'
  end

  def programs
    render 'programs.html.erb'
  end

  def about
    @staffs = Staff.all
    @faqs = Faq.all
    render 'about.html.erb'
  end

  def contact
    render 'contact.html.erb'
  end

  def srien
    render 'siren.html.erb'
  end  
end
