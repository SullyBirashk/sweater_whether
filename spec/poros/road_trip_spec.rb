require 'rails_helper'

RSpec.describe RoadTrip do

  it 'exists with attributes' do

    road_trip_data = {start_city: "Denver,CO",
                    end_city: "Pueblo,CO",
                    travel_time: "01:45:23",
                    weather_at_eta: HourlyWeather.new(weather: [{ :description=>"broken clouds", :icon=>"04n"}], temp: 294.73, dt: 1650769874) }

    road_trip = RoadTrip.new(road_trip_data[:start_city], road_trip_data[:end_city], road_trip_data[:travel_time], road_trip_data[:weather_at_eta])
    expect(road_trip).to be_a RoadTrip
    expect(road_trip.start_city).to be_a String
    expect(road_trip.end_city).to be_a String
    expect(road_trip.travel_time).to be_a String
    expect(road_trip.weather_at_eta).to_not be_nil
  end
end
