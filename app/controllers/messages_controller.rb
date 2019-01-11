class MessagesController < ApplicationController
  # skip_before_action :authorized, only [:index, :show, :create]

  def index
  end

  def show
  end

  def create
  end

  private

  def message_params
    params.require(:message).permit(:content, :conversation_id)
  end

end
