class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @events = Event.all
  end

  def show
    @events = Event.find(params[:id])
  end
end
