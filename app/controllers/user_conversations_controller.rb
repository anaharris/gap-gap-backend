class UserConversationsController < ApplicationController

  def create
  end

  private

  def user_conversation_params
    params.require(:user_conversation).permit(:conversation_id, :user_id)
  end
end
