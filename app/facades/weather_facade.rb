class WeatherFacade

  def self.find_weather(lat, lng)
    data = WeatherService.get_weather(lat, lng)
    current = CurrentWeather.new(data[:current])
    daily = []
    data[:daily].each do |day|
      daily << DailyWeather.new(day)
    end
    hourly = []
    data[:hourly].each do |hour|
      hourly << HourlyWeather.new(hour)
    end
    results = {id: nil, current_weather: current, daily_weather: daily.first(5), hourly_weather: hourly.first(8)}
  end
end
