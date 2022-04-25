require 'rails_helper'

RSpec.describe ' API' do
 before :each do
 end

 it 'Can make a get request' do
   example_params = {}

   headers = {'CONTENT_TYPE' => 'application/json'}

   get '/api/v1/munchies?start=denver,co&destination=pueblo,co&food=chinese', headers: headers

   example = JSON.parse(response.body, symbolize_names: true)
require "pry"; binding.pry
   expect(response).to be_successful

   expect(example[:data]).to have_key(:id)
   expect(example[:data][:id]).to be_an(String)

   expect(example[:data][:attributes]).to have_key(:destination_city)
   expect(example[:data][:attributes][:destination_city]).to be_a(String)
   expect(example[:data][:attributes]).to have_key(:travel_time)
   expect(example[:data][:attributes][:travel_time]).to be_a(String)
   expect(example[:data][:attributes]).to have_key(:forecast)
   expect(example[:data][:attributes][:forecast]).to be_a(Hash)
   expect(example[:data][:attributes]).to have_key(:restaurant)
   expect(example[:data][:attributes][:restaurant]).to be_a(Hash)
 end

 # it 'Can make a post request' do
 #   example_params = {}
 #
 #   headers = {'CONTENT_TYPE' => 'application/json'}
 #
 #   post '/api/v1/', headers: headers, params: JSON.generate(example: example_params)
 #
 #   example = JSON.parse(response.body, symbolize_names: true)
 #
 #   expect(response).to be_successful
 #
 #   expect(example[:data]).to have_key(:id)
 #   expect(example[:data][:id]).to be_an(String)
 #
 #   expect(example[:data][:attributes]).to have_key(:)
 #   expect(example[:data][:attributes][:]).to be_a(String)
 # end
 #
 # it 'Can make a patch request' do
 #   example_params = {}
 #
 #   headers = {'CONTENT_TYPE' => 'application/json'}
 #
 #   patch '/api/v1/', headers: headers, params: JSON.generate(example: example_params)
 #
 #   example = JSON.parse(response.body, symbolize_names: true)
 #
 #   expect(response).to be_successful
 #
 #   expect(example[:data]).to have_key(:id)
 #   expect(example[:data][:id]).to be_an(String)
 #
 #   expect(example[:data][:attributes]).to have_key(:)
 #   expect(example[:data][:attributes][:]).to be_a(String)
 # end
 #
 # it 'Can make a delete request' do
 #   example_params = {}
 #
 #   headers = {'CONTENT_TYPE' => 'application/json'}
 #
 #   delete '/api/v1/', headers: headers, params: JSON.generate(example: example_params)
 #
 #   example = JSON.parse(response.body, symbolize_names: true)
 #
 #   expect(response).to be_successful
 #
 #   expect(example[:data]).to have_key(:id)
 #   expect(example[:data][:id]).to be_an(String)
 #
 #   expect(example[:data][:attributes]).to have_key(:)
 #   expect(example[:data][:attributes][:]).to be_a(String)
 # end
end
