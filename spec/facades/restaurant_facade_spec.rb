require 'rails_helper'

RSpec.describe RestaurantFacade do

  it 'returns example' do
    category = 'chinese'
    location = 'denver,co'

    restaurant = RestaurantFacade.find_restaurants(category, location)

    expect(restaurant).to be_a Restaurant
    expect(restaurant.name).to be_a String
    expect(restaurant.address).to be_a Array
  end
end
