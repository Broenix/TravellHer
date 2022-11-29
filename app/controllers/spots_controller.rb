class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]


  def index
  end


  def show
    @spots = Spot.find(params[:id])
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
