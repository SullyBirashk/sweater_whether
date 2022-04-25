require 'rails_helper'

RSpec.describe Image do

  it 'exists with attributes' do
   image_data = {:id=>"zSm5JPgNeuc",
     :description=>"Boho Girl\n\nModel : @peanutphysique",
     :alt_description=>"woman in white tank top sitting on brown wooden chair",
     :urls=>
      {:raw=>"https://images.unsplash.com/photo-1629163330223-c183571735a1?ixid=MnwzMjI0MzJ8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2NTA4NTI0NDY&ixlib=rb-1.2.1",
       :full=>"https://images.unsplash.com/photo-1629163330223-c183571735a1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwzMjI0MzJ8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2NTA4NTI0NDY&ixlib=rb-1.2.1&q=85",
       :regular=>"https://images.unsplash.com/photo-1629163330223-c183571735a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMjI0MzJ8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2NTA4NTI0NDY&ixlib=rb-1.2.1&q=80&w=1080",
       :small=>"https://images.unsplash.com/photo-1629163330223-c183571735a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMjI0MzJ8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2NTA4NTI0NDY&ixlib=rb-1.2.1&q=80&w=400",
       :thumb=>"https://images.unsplash.com/photo-1629163330223-c183571735a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMjI0MzJ8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2NTA4NTI0NDY&ixlib=rb-1.2.1&q=80&w=200",
       :small_s3=>"https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1629163330223-c183571735a1"}}


   image = Image.new(image_data)
   expect(image).to be_a Image
   expect(image.id).to be_a String
   expect(image.description).to be_a String
   expect(image.alt_description).to be_a String
   expect(image.urls).to be_a Hash
  end
end
