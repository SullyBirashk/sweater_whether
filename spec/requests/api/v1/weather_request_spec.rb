require 'rails_helper'

RSpec.describe 'Weather API' do

 it 'Can make a get request' do
   headers = {'CONTENT_TYPE' => 'application/json'}

   get '/api/v1/forecast?location=denver,co', headers: headers

   weather = JSON.parse(response.body, symbolize_names: true)
require "pry"; binding.pry
   expect(response).to be_successful

   expect(weather[:data]).to have_key(:id)
   expect(weather[:data][:id]).to be_nil

   expect(weather[:data][:attributes]).to have_key(:current_weather)
   expect(weather[:data][:attributes][:current_weather]).to be_a(Hash)
   expect(weather[:data][:attributes]).to have_key(:daily_weather)
   expect(weather[:data][:attributes][:daily_weather]).to be_a(Array)
   expect(weather[:data][:attributes]).to have_key(:hourly_weather)
   expect(weather[:data][:attributes][:hourly_weather]).to be_a(Array)
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
