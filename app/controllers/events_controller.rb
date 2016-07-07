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
      # Deliver the event notification email
      @users = User.all
      @users.each do |user|
        EventNotifier.send_event_email(user).deliver
      end
      redirect_to "/events/#{@event.id}"
    else
      render "new.html.erb"
    end
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
