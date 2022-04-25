require 'rails_helper'

RSpec.describe WeatherService do

 it 'returns weather with given coordinates' do
   lat = 39.738453
   lng = -104.984853

   search = WeatherService.get_weather(lat, lng)

   expect(search).to be_a Hash
   expect(search).to have_key(:current)
   expect(search).to have_key(:daily)
   expect(search).to have_key(:hourly)
   expect(search[:current]).to be_a Hash
   expect(search[:hourly]).to be_a Array
   expect(search[:daily]).to be_a Array
 end
end
