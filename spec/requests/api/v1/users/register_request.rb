require 'rails_helper'

RSpec.describe 'User Create API' do

 it 'Can make a post request' do
   user_params = {email: "whatever@example.com",
                  password: "password",
                  password_confirmation: "password"}

   headers = {'CONTENT_TYPE' => 'application/json'}

   post '/api/v1/users', headers: headers, params: JSON.generate(user: user_params)

   user = JSON.parse(response.body, symbolize_names: true)

   expect(response).to be_successful

   expect(user[:data]).to have_key(:id)
   expect(user[:data]).to be_an(Hash)

   expect(user[:data][:attributes]).to have_key(:email)
   expect(user[:data][:attributes][:email]).to be_a(String)
   expect(user[:data][:attributes]).to have_key(:access_token)
   expect(user[:data][:attributes][:access_token]).to be_a(String)
 end

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
