class RestaurantService

  def self.conn
    headers = {'Authorization' => "Bearer #{ENV['yelp_api']}"}
    Faraday.new(url: 'https://api.yelp.com', headers: headers)
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_nearby(category, location)
    get_url("/v3/businesses/search?categories=#{category}&location=#{location}")
  end
end
