class StaticPagesController < ApplicationController
  def home
    # news - last 2 by created date
    @recent_news = BlogPost.last(2)
    # events - date >= today - limit 4
    @future_events = Event.where('datetime >= ?', Date.today).first(4)
    render 'home.html.erb'
  end

  def programs
    render 'programs.html.erb'
  end

  def news
    render 'news.html.erb'
  end
end
