class BotConversationsController < ApplicationController

  def index
    render json: BotConversation.all
  end

  def create
    result = BotConversation.create(bot_conversation_params)
    if result.valid?
      render json: {botConversation: result}, status: :accepted
    else
      render json: {message: 'post unsuccessful'}, status: :unprocessable_entity
    end
  end

  private

  def bot_conversation_params
    params.require(:bot_conversation).permit(:conversation_id, :bot_id)
  end

end
