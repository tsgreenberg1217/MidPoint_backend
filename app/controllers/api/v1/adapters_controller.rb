
class Api::V1::AdaptersController <  ActionController::API

  def index
    # byebug
  end

  def create
    search = Search.new(params[:lat], params[:lng])
    render json: search.results
  end

end
