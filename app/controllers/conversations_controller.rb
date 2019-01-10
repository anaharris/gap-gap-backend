class ConversationsController < ApplicationController
  skip_before_action :authorized, only [:index, :show, :create]

  def index
  end

  def show
  end

  def create
  end

  private

  def conversation_params
    params.require(:conversation).permit(:topic)
  end

end
