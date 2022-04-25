require 'rails_helper'

RSpec.describe MapFacade do

  it 'returns coordinates' do
    location = 'Denver, CO'
    coordinates = MapFacade.find_coordinates(location)
    expect(coordinates).to be_a Map
    expect(coordinates.latitude).to be_a Float
    expect(coordinates.longitude).to be_a Float
  end

  it 'returns travel time' do
    from = 'denver,co'
    to = 'pueblo,co'

    travel_time = MapFacade.find_travel_time(from, to)

    expect(travel_time).to be_a Travel
    expect(travel_time.time).to be_a String
    expect(travel_time.time).to eq("01:45:23")
  end
end
