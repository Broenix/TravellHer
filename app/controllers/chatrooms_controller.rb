class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @event = @chatroom.event
    @message = Message.new
  end
end
