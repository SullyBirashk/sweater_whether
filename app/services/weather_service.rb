class WeatherService

  def self.conn
    Faraday.new(url: 'https://api.openweathermap.org')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_weather(lat, lng)
    get_url("/data/2.5/onecall?lat=#{lat}&lon=#{lng}&appid=#{ENV['weather_api']}")
  end
end
