class BotConversationsController < ApplicationController

  def create
  end

  private

  def bot_conversation_params
    params.require(:bot_conversation).permit(:conversation_id, :bot_id)
  end

end
