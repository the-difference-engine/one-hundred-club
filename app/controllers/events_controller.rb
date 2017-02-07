class EventsController < ApplicationController

  include EventsHelper
  before_action :custom_authenticate_user!, except: [:index, :show]

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
      # Deliver the event notification email    
      @users = User.all   
      @users.each do |user|   
        EventNotifier.send_event_email(user).deliver_now    
      end
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
    @event = Event.find_by(id: params[:id])
    datetime = format_datetime_updates(params[:datetime])
    @event.update(
      title: params[:title],
      datetime: datetime,
      description: params[:description],
      image: params[:image],
      location: params[:location],
      remove_image: params[:remove_image]
    )
    if @event.save
      flash[:success] = 'Your event has been updated!'
      redirect_to "/events/#{@event.id}"
    else 
      render 'edit.html.erb'  
      
    end

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
