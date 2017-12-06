
class Search
  attr_accessor :term, :location, :results
  attr_reader :average_rating, :price

  def initialize(lat, lng, term)
    byebug
    @term = term
    @location = "#{lat}, #{lng}"
    @results = YelpAPI.test(@term, @location)
  end


end
