class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
    @mybookmarks = @bookmarks.where(user_id: current_user.id)
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.event_id = params[:event_id]
    @bookmark.user_id = current_user.id
    if @booking.save
      redirect_to bookmarks_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
