class BotsController < ApplicationController
  # skip_before_action :authorized, only [:index, :show, :create]

  def index
    render json: Bot.all
  end

  def show
    render json: Bot.find(bot_params)
  end

  def create
    @bot = Bot.create(bot_params)
    if @bot.valid?
      render json: {bot: @bot}, status: :accepted
    else
      render json: {message: 'post unsuccessful'}, status: :unprocessable_entity
    end
  end

  private

  def bot_params
    params.require(:bot).permit(:name, :avatar, :trigger, :response)
  end

end
