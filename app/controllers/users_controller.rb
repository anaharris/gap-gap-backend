class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
  end

  def show
  end

  def create
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :avatar, :password)
  end
end
