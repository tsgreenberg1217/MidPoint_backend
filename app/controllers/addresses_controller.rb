class AddressesController < ApplicationController

  def index
    @addresses = Address.all
    render json: @addresses
  end


  def create
    nick = User.find(1)
    nick.addresses.create(directions: params[:address], lat: params[:lat], lng: params[:lng])
    render json: Address.all
  end
end



# https://maps.googleapis.com/maps/api/geocode/json?address=${this.state.address}&key=${apiKey}`
