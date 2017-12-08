class Api::V1::AddressesController <  ActionController::API

  def index
    @addresses = Address.all
    render json: @addresses
  end

  def show
    user = User.find_by(username: params[:username])
    addresses = user.addresses
    render json: addresses
  end


  def create
    user = User.find_by(username: params[:user])
    user.addresses.create(directions: params[:name], name: params[:addressType])
    render json: {addresses: user.addresses}
  end
end



# https://maps.googleapis.com/maps/api/geocode/json?address=${this.state.address}&key=${apiKey}`
