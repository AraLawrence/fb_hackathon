class EventController < ApplicationController

  def main
  end

  def about
  end

  def index
    puts session[:user_id]
  end

  def my
    @user = User.find(session[:user_id])
    @events = @user.events.all
  end

  def create
    user = session[:user_id]
    loc = Loc.create addr: event_params[:addr], city: event_params[:city], state: event_params[:state], zip: event_params[:zip]
    event = User.find(user).events.create title: event_params[:title], descrip: event_params[:descrip]
    loc.segments.create s_time: event_params[:s_time], place: event_params[:place], interaction: event_params[:interaction], event_id: event.id
     
    redirect_to edit_event_path(event.id)
  end

  def new
  end

  def edit
    @event = Event.find params[:id]
    @segments = @event.segments
  end

  def show
    @event = Event.find params[:id]
    @segments = @event.segments
  end

  def update
    event = params[:id]
    loc = Loc.create addr: segment_params[:addr], city: segment_params[:city], state: segment_params[:state], zip: segment_params[:zip]
    Event.find(event).segments.create s_time: segment_params[:s_time], loc: loc, place: segment_params[:place], interaction: segment_params[:interaction]
    
    redirect_to edit_event_path
  end

  def destroy
  end

  private

  def segment_params #editing an event
    params.require(:segment).permit(:s_time, :addr, :city, :state, :zip, :place, :interaction);
  end

  def event_params #creating a new event
    params.require(:event).permit(:title, :descrip, :s_time, :addr, :city, :state, :zip, :place, :interaction);
  end
end
