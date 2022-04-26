require 'rails_helper'

RSpec.describe 'Background Image API' do
 before :each do
 end

 it 'Can make a get request' do
   example_params = {}

   headers = {'CONTENT_TYPE' => 'application/json'}

   get '/api/v1/backgrounds?location=denver,co', headers: headers

   picture_info = JSON.parse(response.body, symbolize_names: true)

   expect(response).to be_successful

   expect(picture_info[:data]).to have_key(:attributes)
   expect(picture_info[:data][:attributes]).to_not be_nil


   expect(picture_info[:data][:attributes]).to have_key(:id)
   expect(picture_info[:data][:attributes][:id]).to be_a(String)
   expect(picture_info[:data][:attributes]).to have_key(:description)
   expect(picture_info[:data][:attributes][:description]).to be_a(String)
   expect(picture_info[:data][:attributes]).to have_key(:alt_description)
   expect(picture_info[:data][:attributes][:alt_description]).to be_a(String)
   expect(picture_info[:data][:attributes]).to have_key(:urls)
   expect(picture_info[:data][:attributes][:urls]).to be_a(Hash)
 end
end
