class Map
  attr_reader:latitude, :longitude

  def initialize(coordinates)
    @latitude = coordinates[:lat]
    @longitude = coordinates[:lng]
  end
end
