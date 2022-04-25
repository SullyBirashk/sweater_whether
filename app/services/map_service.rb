class MapService

  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_coordinates(location)
    get_url("/geocoding/v1/address?key=#{ENV['map_api']}&location=#{location}")
  end
end
