# require_relative './API.rb'

class AdaptersController < ApplicationController

  def index
    # byebug
  end

  def create
    search = Search.new(params[:lat], params[:lng])
    render json: search.results
  end

end


# Rails
#
# def someAction
#   response = HTTParty.get(someOtherAPI)
#   response = JSON.parse(response)
#   result = helper(response)
#   render :json result
# end
#
# def helper(res)
#   # some loop that gets us what we want from that response
# end
#
#
# JS
#
# fetch(someAction).then(res.json()).then(res=>log(res))
