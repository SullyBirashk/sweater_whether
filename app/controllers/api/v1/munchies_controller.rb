class Api::V1::MunchiesController < ApplicationController

  def index
    start = params[:start]
    destination = params[:destination]
    category = params[:food]
    travel_time = MapFacade.find_travel_time(start, destination)
    coordinates = MapFacade.find_coordinates(destination)
    weather = WeatherFacade.find_weather(coordinates.latitude, coordinates.longitude)
    restaurant = RestaurantFacade.find_restaurants(category, destination)
    require "pry"; binding.pry
  end

end
