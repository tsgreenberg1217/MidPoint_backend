class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(username: params[:username], password: params[:password], email: params[:email])
    render json: @user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
