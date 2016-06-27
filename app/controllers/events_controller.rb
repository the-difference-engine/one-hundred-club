class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
  end

  def update
  end
end
