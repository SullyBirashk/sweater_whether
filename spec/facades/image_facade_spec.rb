require 'rails_helper'

RSpec.describe ImageFacade do

  it 'returns image with a given query' do
    location = 'denver,co'

    image = ImageFacade.find_image(location)

    expect(image).to be_a Image
    expect(image.id).to be_a String
    expect(image.description).to be_a String
    expect(image.alt_description).to be_a String
    expect(image.urls).to be_a Hash
  end

  # it 'returns example' do
  #  example = ImageFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = ImageFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = ImageFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
end
