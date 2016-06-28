class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @event = Event.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    event = Event.find_by(id: params[:id])

    event.update(
      title: params[:title],
      datetime: params[:datetime],
      description: params[:description],
      image: params[:image],
      location: params[:location]
    )

    redirect_to "/events/#{event.id}"
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