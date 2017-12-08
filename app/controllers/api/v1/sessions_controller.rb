class Api::V1::SessionsController < ApplicationController
before_action :authorized, only: [:show]

  def show
    render json: { username: current_user.username, addresses: current_user.addresses}
  end



  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { username: user.username, addresses: user.addresses, jwt: token}
    else
      render json: { error: "some bad stuff happened"}
    end
  end


end
