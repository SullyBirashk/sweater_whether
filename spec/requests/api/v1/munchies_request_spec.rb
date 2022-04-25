require 'rails_helper'

RSpec.describe ' API' do
  
 it 'Can make a get request' do
   example_params = {}

   headers = {'CONTENT_TYPE' => 'application/json'}

   get '/api/v1/munchies?start=denver,co&destination=pueblo,co&food=chinese', headers: headers

   munchies = JSON.parse(response.body, symbolize_names: true)

   expect(response).to be_successful

   expect(munchies[:data]).to have_key(:id)
   expect(munchies[:data][:id]).to be_nil

   expect(munchies[:data][:attributes]).to have_key(:destination_city)
   expect(munchies[:data][:attributes][:destination_city]).to be_a(String)
   expect(munchies[:data][:attributes]).to have_key(:travel_time)
   expect(munchies[:data][:attributes][:travel_time]).to be_a(String)
   expect(munchies[:data][:attributes]).to have_key(:forecast)
   expect(munchies[:data][:attributes][:forecast]).to be_a(Hash)
   expect(munchies[:data][:attributes]).to have_key(:restaurant)
   expect(munchies[:data][:attributes][:restaurant]).to be_a(Hash)
 end
end
