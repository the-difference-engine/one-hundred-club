class Api::EventsController < ApplicationController
  def index
    @events = Event.all
    render :json => @events
  end
end