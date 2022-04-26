class Api::V1::RoadTripController < ApplicationController

  def create
    start_city = road_trip_params[:origin]
    end_city = road_trip_params[:destination]
    api_key = road_trip_params[:api_key]
    travel_time = MapFacade.find_travel_time(start_city, end_city).time
    hours = travel_time.split(':')[0].to_i
    minutes = travel_time.split(':')[1].to_i
    seconds = travel_time.split(':')[2].to_i
    eta_time = (DateTime.now + hours.hour + minutes.minutes + seconds.seconds).strftime('%r')
    coordinates = MapFacade.find_coordinates(end_city)
    weather = WeatherFacade.find_weather(coordinates.latitude, coordinates.longitude)
    weather_at_eta = []
    weather[:hourly_weather].each do |hour|
      if hour.time.split(':')[0] == eta_time.split(':')[0]
        weather_at_eta << hour
      end
    end
    road_trip = RoadTrip.new(start_city, end_city, travel_time, weather_at_eta[0])
    render json: RoadTripSerializer.new(road_trip)
  end

  private


  def road_trip_params
    params.require(:road_trip).permit(:origin, :destination, :api_key)
  end

end
