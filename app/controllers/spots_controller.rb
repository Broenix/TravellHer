class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]
  skip_before_action :authenticate_user!, only: [ :show ]


  def index
    @category = Category.find(params[:category_id])
    @spots = Spot.where(category: @category)

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
