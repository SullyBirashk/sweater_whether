require 'rails_helper'

RSpec.describe 'User Login API' do
 before :each do
   @user_1 = User.create!(email: 'whatever@example.com', password: 'password')
 end

 it 'Can make a login request' do
   login_params = {'email': 'whatever@example.com',
                  'password': 'password'}

   headers = {'CONTENT_TYPE' => 'application/json'}

   post '/api/v1/sessions', headers: headers, params: JSON.generate(login_params)

   user = JSON.parse(response.body, symbolize_names: true)

   expect(response).to be_successful

   expect(user[:data]).to have_key(:id)
   expect(user[:data][:id]).to be_an(String)

   expect(user[:data][:attributes]).to have_key(:email)
   expect(user[:data][:attributes][:email]).to be_a(String)
   expect(user[:data][:attributes]).to have_key(:access_token)
   expect(user[:data][:attributes][:access_token]).to be_a(String)
 end

 it 'Can deny you access if password is wrong' do
   login_params = {'email': 'whatever@example.com',
                  'password': 'passworddddddd'}

   headers = {'CONTENT_TYPE' => 'application/json'}

   post '/api/v1/sessions', headers: headers, params: JSON.generate(login_params)

   expect(response.status).to eq(401)
 end

 it 'Can deny you access if username is wrong' do
   login_params = {'email': 'whatev@example.com',
                  'password': 'password'}

   headers = {'CONTENT_TYPE' => 'application/json'}

   post '/api/v1/sessions', headers: headers, params: JSON.generate(login_params)

   expect(response.status).to eq(401)
 end
end
