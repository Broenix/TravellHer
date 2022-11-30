class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]
  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    @category = Category.find(params[:category_id])

    if params[:query].present?
      sql_query = <<~SQL
        spots.name ILIKE :query
        OR spots.location ILIKE :query
      SQL
      @spots = Spot.where(category: @category).where(sql_query, query: "%#{params[:query]}%")
    else
      @spots = Spot.where(category: @category)
    end
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
