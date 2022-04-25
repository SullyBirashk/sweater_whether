class Munchies
  attr_reader :id, :destination_city, :travel_time, :forecast, :restaurant

  def initialize(destination_city, travel_time, forecast, restaurant)
    @id = nil
    @destination_city = destination_city
    @travel_time = travel_time.time
    @forecast = {summary: forecast[:current_weather].conditions,
                 temperature: forecast[:current_weather].temp}
    @restaurant = {name: restaurant.name, address: restaurant.address}
  end

end
