require 'rails_helper'

RSpec.describe Restaurant do

  it 'exists with attributes' do
   restaurant_data = {:id=>"6kRbrLNIZKZ1fcjgsTFobg",
 :alias=>"fortune-wok-to-table-denver",
 :name=>"Fortune Wok to Table",
 :image_url=>"https://s3-media1.fl.yelpcdn.com/bphoto/aVmP8cWwrCsLWWjwx8wvjg/o.jpg",
 :is_closed=>false,
 :url=>"https://www.yelp.com/biz/fortune-wok-to-table-denver?adjust_creative=vkZuAlIM_LqNsNW3ioF5rg&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=vkZuAlIM_LqNsNW3ioF5rg",
 :review_count=>354,
 :categories=>[{:alias=>"noodles", :title=>"Noodles"}, {:alias=>"dimsum", :title=>"Dim Sum"}, {:alias=>"shanghainese", :title=>"Shanghainese"}],
 :rating=>4.5,
 :coordinates=>{:latitude=>39.72124, :longitude=>-104.9543},
 :transactions=>["delivery"],
 :price=>"$$",
 :location=>{:address1=>"2817 E 3rd Ave", :address2=>"", :address3=>"", :city=>"Denver", :zip_code=>"80206", :country=>"US", :state=>"CO", :display_address=>["2817 E 3rd Ave", "Denver, CO 80206"]},
 :phone=>"+13033217788",
 :display_phone=>"(303) 321-7788",
 :distance=>2093.330545587293}

   restaurant = Restaurant.new(restaurant_data)
   expect(restaurant).to be_a Restaurant
   expect(restaurant.name).to eq("Fortune Wok to Table")
   expect(restaurant.address).to eq(["2817 E 3rd Ave", "Denver, CO 80206"])
  end
end
