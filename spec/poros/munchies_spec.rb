require 'rails_helper'

RSpec.describe Munchies do

  it 'exists with attributes' do
   munchies_data = {destination_city: "pueblo,co",
                    travel_time: "01:45:23",
                    forecast: {summary: 'few clouds', temperature: 281.65},
                    restaurant: {name: 'Wonderful Bistro', address: ["4602 N Elizabeth St", "Ste 120", "Pueblo, CO 81008"]}}

   munchies = Munchies.new(munchies_data)
   expect(munchies).to be_a Munchies
   expect(munchies.destination_city).to eq("pueblo,co")
   expect(munchies.travel_time).to eq("01:45:23")
   expect(munchies.forecast).to eq({summary: 'few clouds', temperature: 281.65})
   expect(munchies.restaurant).to eq({name: 'Wonderful Bistro', address: ["4602 N Elizabeth St", "Ste 120", "Pueblo, CO 81008"]})
  end
end
