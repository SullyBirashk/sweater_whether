class MapFacade

  def self.find_coordinates(location)
    data = MapService.get_coordinates(location)
    coordinates = data[:results][0][:locations][0][:latLng]
    Map.new(coordinates)
  end

  def self.find_travel_time(from, to)
    data = MapService.get_travel_time(from, to)

    Travel.new(data[:route])
  end
end
