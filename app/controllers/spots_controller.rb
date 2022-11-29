class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]
  skip_before_action :authenticate_user!, only: [ :show ]


  def index
    @spots = Spot.all
  end


  def show
    @spot = Spot.find(params[:id])
    @events = @spot.events
  end

  private

  def spot_params
    params.require(:spot).permit(
      :name,
      :location,
      :rating,
    )
  end
end
