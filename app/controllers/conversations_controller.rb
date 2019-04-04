class ConversationsController < ApplicationController
  # skip_before_action :authorized, only: [:index, :show, :create]

  def index
    render json: Conversation.all.includes(:users, :messages, :bots)
  end

  def show
    render json: Conversation.find(params[:id])
  end

  def create
    conversation = Conversation.create(conversation_params)
    if conversation.valid?
      render json: {conversation: conversation}, status: :accepted
    else
      render json: {message: 'post unsuccessful'}, status: :unprocessable_entity
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:topic)
  end

end
