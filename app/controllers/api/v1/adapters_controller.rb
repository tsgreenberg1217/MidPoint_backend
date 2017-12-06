require_relative '../../../helpers/YelpAPI'

class Api::V1::AdaptersController <  ActionController::API
  extend YelpAPI

  def index
  end

  def create
    location = "#{params[:lat]}, #{params[:lng]}"
    term = "#{params[:term]}"
    results = YelpAPI.test(location, term)
    render json: results
  end

end
