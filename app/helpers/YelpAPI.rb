
module YelpAPI
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
TOKEN_PATH = "/oauth2/token"
GRANT_TYPE = "client_credentials"


SEARCH_LIMIT = 20



  def self.test(location, term)
      url = "#{API_HOST}#{SEARCH_PATH}"
      params = set_params({term: term, location: location})
      response = HTTP.auth(bearer_token).get(url, params: params)
      response.parse
  end

  def self.set_params(params)
    params = {
      term: params[:term],
      location: params[:location],
      limit: SEARCH_LIMIT, # The search return max is 50
    }
  end

  def self.bearer_token
    url = "#{API_HOST}#{TOKEN_PATH}"

    params = {
      client_id: ENV["yelp_id"],
      client_secret: ENV["yelp_secret"],
      grant_type: GRANT_TYPE
    }

    response = HTTP.post(url, params: params)
    parsed = response.parse

    "#{parsed['token_type']} #{parsed['access_token']}"
    # byebug
  end


end
