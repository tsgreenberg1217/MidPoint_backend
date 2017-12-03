
module API
CLIENT_ID = 'LvnmmaOiGVGD8KJWl3F9Jw'
CLIENT_SECRET = 'o2npCNvvrQxpPJ33KosFKFdZ0ZnWCZQqFoPlu1k5SFtR0SOR2GpypziSXKe2XkeV'
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
TOKEN_PATH = "/oauth2/token"
GRANT_TYPE = "client_credentials"


SEARCH_LIMIT = 5



  def self.test(term, location)
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
      client_id: CLIENT_ID,
      client_secret: CLIENT_SECRET,
      grant_type: GRANT_TYPE
    }

    response = HTTP.post(url, params: params)
    parsed = response.parse

    "#{parsed['token_type']} #{parsed['access_token']}"
    # byebug
  end


end
