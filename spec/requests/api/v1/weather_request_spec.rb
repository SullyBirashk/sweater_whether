require 'rails_helper'

RSpec.describe 'Weather API' do

 it 'Can make a get request' do
   headers = {'CONTENT_TYPE' => 'application/json'}

   get '/api/v1/forecast?location=denver,co', headers: headers

   weather = JSON.parse(response.body, symbolize_names: true)

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
end
