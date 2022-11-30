class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @events = Event.all
  end

  def show
    @events = Event.find(params[:id])
  end

  def create
    @events = Event.new(events_params)
    @event.spot = @spots
    if @event.save
      redirect_to spot_path(@spots)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_spots
    @spots = spots.find(params[:spots_id])
  end

  def events_params
    params.require(:event).permit(:name, :description, :event_date)
  end

end
