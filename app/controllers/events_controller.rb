class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new # Needed to instantiate the form_with
  end

  def create
    @event = Event.create(events_params)
      # @event.user_id = current_user.id
      @spot = Spot.find(params[:spot_id])
      @event.spot = @spot

      if @event.save
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
