require 'rails_helper'

RSpec.describe MapService do

 it 'returns longitude and latitude' do
   search = MapService.get_coordinates("Denver, CO")

   expect(search).to be_a Hash
   expect(search).to have_key(:results)
   expect(search[:results]).to be_a Array
   expect(search[:results][0][:locations][0][:latLng]).to be_a Hash
   expect(search[:results][0][:locations][0][:latLng]).to have_key(:lat)
   expect(search[:results][0][:locations][0][:latLng]).to have_key(:lng)
   expect(search[:results][0][:locations][0][:latLng][:lat]).to be_a Float
   expect(search[:results][0][:locations][0][:latLng][:lng]).to be_a Float
 end
end
