require 'rails_helper'

RSpec.describe Map do

  it 'exists with attributes' do
   coordinates_data = {:lat=>39.738453, :lng=>-104.984853}

   coordinates = Map.new(coordinates_data)
   expect(coordinates).to be_a Map
   expect(coordinates.latitude).to eq(39.738453)
   expect(coordinates.longitude).to eq(-104.984853)
  end
end
