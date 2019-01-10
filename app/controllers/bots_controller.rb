class BotsController < ApplicationController
  skip_before_action :authorized, only [:index, :show, :create]

  def index
  end

  def show
  end

  def create
  end

  private

  def bot_params
    params.require(:bot).permit(:name, :avatar, :trigger, :response)
  end

end
