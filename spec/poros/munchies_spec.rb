require 'rails_helper'

RSpec.describe Munchies do

  it 'exists with attributes' do
    coordinates = MapFacade.find_coordinates('pueblo,co')

    munchies_data = {destination_city: "pueblo,co",
                    travel_time: MapFacade.find_travel_time("denver,co", 'pubelo,co'),
                    forecast: WeatherFacade.find_weather(coordinates.latitude, coordinates.longitude),
                    restaurant: RestaurantFacade.find_restaurants('chinese', 'pueblo,co')}

    munchies = Munchies.new(munchies_data[:destination_city], munchies_data[:travel_time], munchies_data[:forecast], munchies_data[:restaurant])
    expect(munchies).to be_a Munchies
    expect(munchies.destination_city).to be_a String
    expect(munchies.travel_time).to be_a String
    expect(munchies.forecast[:summary]).to be_a String
    expect(munchies.forecast[:temperature]).to be_a Float
    expect(munchies.restaurant[:name]).to be_a String
    expect(munchies.restaurant[:address]).to be_a Array
  end
end
