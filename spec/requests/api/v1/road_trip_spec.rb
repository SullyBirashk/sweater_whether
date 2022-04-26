require 'rails_helper'

RSpec.describe 'Roadtrip API' do
 before :each do
   @user_1 = User.create!(email: 'whatever@example.com', password: 'password')
 end

 it 'Can make a post request' do
   road_trip_params = {origin: 'Denver,CO',
                       destination: 'Pueblo,CO',
                       api_key: 'jgn983hy48thw9begh98h4539h4'}

   headers = {'CONTENT_TYPE' => 'application/json'}

   post '/api/v1/road_trip', headers: headers, params: JSON.generate(road_trip: road_trip_params)

   road_trip = JSON.parse(response.body, symbolize_names: true)

   expect(response).to be_successful

   expect(road_trip[:data]).to have_key(:id)

   expect(road_trip[:data][:attributes]).to have_key(:start_city)
   expect(road_trip[:data][:attributes][:start_city]).to be_a(String)
   expect(road_trip[:data][:attributes]).to have_key(:end_city)
   expect(road_trip[:data][:attributes][:end_city]).to be_a(String)
   expect(road_trip[:data][:attributes]).to have_key(:travel_time)
   expect(road_trip[:data][:attributes][:travel_time]).to be_a(String)
   expect(road_trip[:data][:attributes]).to have_key(:weather_at_eta)
   expect(road_trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
   expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
   expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
 end
end
