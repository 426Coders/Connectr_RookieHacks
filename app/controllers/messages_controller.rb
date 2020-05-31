class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = Message.create(body: message_params[:body], user: current_user)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", message_partial: render_message(message)  
    end
  end

  private 
  def message_params
    params.require(:message).permit(:body)
  end

  def render_message(message)
    render(partial: 'message', locals: {message: message})
  end
end
