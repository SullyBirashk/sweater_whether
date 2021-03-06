require 'rails_helper'

RSpec.describe ImageService do

 it 'returns image information with url' do
   location = 'denver,co'

   search = ImageService.get_image(location)

   expect(search).to be_a Hash
   expect(search).to have_key(:results)
   expect(search[:results]).to be_a Array

   expect(search[:results][0]).to have_key(:id)
   expect(search[:results][0]).to have_key(:description)
   expect(search[:results][0]).to have_key(:alt_description)
   expect(search[:results][0]).to have_key(:urls)
 end
end
