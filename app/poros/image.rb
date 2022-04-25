class Image
  attr_reader :id, :description, :alt_description, :urls

  def initialize(data)
    @id = data[:id]
    @description = data[:description]
    @alt_description = data[:alt_description]
    @urls = data[:urls]
  end
end
