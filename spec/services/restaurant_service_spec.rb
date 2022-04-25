require 'rails_helper'

RSpec.describe RestaurantService do

 it 'returns example' do
   category = 'chinese'
   location = 'denver,co'

   headers = {'CONTENT_TYPE' => 'application/json'}

   search = RestaurantService.get_nearby(category, location)

   expect(search).to be_a Hash
   expect(search).to have_key(:businesses)
   expect(search[:businesses]).to be_a Array
   expect(search[:businesses][0]).to be_a Hash
   expect(search[:businesses][0]).to have_key(:name)
   expect(search[:businesses][0]).to have_key(:location)
 end
end
