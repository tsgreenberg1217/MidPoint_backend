

class AdaptersController < ApplicationController

  def index
    byebug
  end

  def create
    byebug
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
