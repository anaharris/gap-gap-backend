class ConversationsController < ApplicationController
  # skip_before_action :authorized, only [:index, :show, :create]

  def index
    render json: Conversation.all
  end

  def show
    render json: Conversation.find(params[:id])
  end

  def create
    Conversation.create(conversation_params)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:topic)
  end

end
