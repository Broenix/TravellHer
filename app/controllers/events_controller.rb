class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    if params[:query].present?
      sql_query = <<~SQL
        events.name ILIKE :query
        OR events.description ILIKE :query
      SQL
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new # Needed to instantiate the form_with
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @event = Event.new(events_params)
      @event.user_id = current_user.id
      @spot = Spot.find(params[:spot_id])
      @event.spot = @spot
      
      if @event.save
        @chatroom = Chatroom.create(name: @event.name, event_id: @event.id)
        redirect_to events_path
      else
        render :new, status: :unprocessable_entity
      end
  end

  private

  def events_params
    params.require(:event).permit(:name, :description, :event_date)
  end

end
