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

  # it 'returns example' do
  #  example = RestaurantFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = RestaurantFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = RestaurantFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
end
