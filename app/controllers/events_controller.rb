class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def destroy
    event = Event.find_by(id: params[:id])

    if event.destroy
      redirect_to '/events'
    else 
      redirect_to "/events/#{event.id}"
    end
  end
  
end