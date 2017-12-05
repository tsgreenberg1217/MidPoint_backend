require_relative '../../../helpers/YelpAPI'

class Api::V1::AdaptersController <  ActionController::API
  extend YelpAPI
  
  def index
  end

  def create
    # search = Search.new(params[:lat], params[:lng])
    location = "#{params[:lat]}, #{params[:lng]}"
    results = YelpAPI.test(location)
    render json: results
  end

end
