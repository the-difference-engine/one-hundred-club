class StaticPagesController < ApplicationController
  def home
    # news - last 2 by created date
    @recent_news = BlogPost.last(2)
    # events - date >= today - limit 4
    @future_events = Event.where('datetime >= ?', Date.today).first(4)
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
end
