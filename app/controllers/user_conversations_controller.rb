class UserConversationsController < ApplicationController

  def index
    render json: UserConversation.all
  end

  def create
    result = UserConversation.create(user_conversation_params)
    if result.valid?
      render json: {userConversation: result}, status: :accepted
    else
      render json: {message: 'post unsuccessful'}, status: :unprocessable_entity
    end
  end

  private

  def user_conversation_params
    params.require(:user_conversation).permit(:conversation_id, :user_id)
  end
end
