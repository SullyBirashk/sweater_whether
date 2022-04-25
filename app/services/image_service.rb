class ImageService

  def self.conn
    Faraday.new(url: 'https://api.unsplash.com')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_image(location)
    get_url("/search/photos?client_id=#{ENV['image_api']}&query=#{location}&per_page=1")
  end
end
