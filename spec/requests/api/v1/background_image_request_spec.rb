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
