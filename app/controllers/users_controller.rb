class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({user_id: @user.id})
        render json: { message: 'successfully created used', user: UserSerializer.new(@user), jwt: @token }, stauts: :created
      else
        render json: { message: 'failed to create user' }, status: :not_acceptable
      end
    end

  def update
    User.find(params[:id]).update(user_params)
    render json: User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :avatar, :password)
  end
end
