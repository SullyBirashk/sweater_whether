require 'rails_helper'

RSpec.describe MapFacade do

  it 'returns coordinates' do
    location = 'Denver, CO'
    coordinates = MapFacade.find_coordinates(location)
    expect(coordinates).to be_a Map
    expect(coordinates.latitude).to be_a Float
    expect(coordinates.longitude).to be_a Float
  end
end
