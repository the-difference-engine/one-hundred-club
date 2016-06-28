class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
  end

  def create
    @event = Event.create(
      image: params[:image],
      title: params[:title],
      description: params[:description],
      datetime: params[:datetime],
      location: params[:location]
    )
    if @event.save
      redirect_to "/events/#{@event.id}"
    else
      render "new.html.erb"
    end
  end
end
