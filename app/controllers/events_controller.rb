class EventsController < ApplicationController
  def destroy
    event = Event.find_by(id: params[:id])

    if event.destroy
      redirect_to '/events'
    else 
      redirect_to "/events/#{event.id}"
    end
  end
end
