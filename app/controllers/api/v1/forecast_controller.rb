class Api::V1::ForecastController < ApplicationController

  def index
    coordinates = MapFacade.find_coordinates(params[:location])
    response = WeatherFacade.find_weather(coordinates.latitude, coordinates.longitude)
    forecast = Forecast.new(response[:current_weather], response[:daily_weather], response[:hourly_weather])
    render json: WeatherSerializer.new(forecast)
  end

end
