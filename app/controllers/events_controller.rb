class EventsController < ApplicationController
  include EventsHelper
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @event = Event.new
  end

  def create
    datetime = format_datetime_new(params[:datetime])
    @event = Event.new(
      image: params[:image],
      title: params[:title],
      description: params[:description],
      datetime: datetime,
      location: params[:location]
    )
    if @event.save
      redirect_to "/events/#{@event.id}"
    else
      render 'new.html.erb'
    end
  end

  def edit
    @event = Event.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    event = Event.find_by(id: params[:id])
    datetime = format_datetime_updates(params[:datetime])
    event.update(
      title: params[:title],
      datetime: datetime,
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
