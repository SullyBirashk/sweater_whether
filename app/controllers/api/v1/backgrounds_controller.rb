class Api::V1::BackgroundsController < ApplicationController

  def index
    location = params[:location]
    image = ImageFacade.find_image(location)
    render json: ImageSerializer.new(image)
  end

end
