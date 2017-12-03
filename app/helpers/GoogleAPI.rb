
class GoogleAPI

  def initialize(address)
    # byebug
    @address = address
  end

  def hitAPI
      apiKey =  'AIzaSyCsmeDgEFx6LZXsP0WqJN0B_9bm61_c1ZQ'
      googleRoute = `https://maps.googleapis.com/maps/api/geocode/json?address=#{@address}&key=#{apiKey}`
      response = HTTParty.get(googleRoute)
      # response.parse
  end

end


# fetch()
#     .then(res => res.json())
#     .then(json => this.setState({
#       lat: json.results[0].geometry.location.lat,
#       lng: json.results[0].geometry.location.lng},() => this.fetchToYelp(this.state.lat,this.state.lng) ) )
