class ImageFacade

  def self.find_image(location)
    data = ImageService.get_image(location)

    Image.new(data[:results][0])
  end
end
