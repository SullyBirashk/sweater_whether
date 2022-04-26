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
end
