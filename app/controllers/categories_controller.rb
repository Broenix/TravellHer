class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @categories = Category.all
    @events = Event.all
  end
end
