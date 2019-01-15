class MessagesController < ApplicationController
  # skip_before_action :authorized, only [:index, :show, :create]

  def index
  end

  def show
  end

  def create
    Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :content, :conversation_id, :user_name)
  end

end
