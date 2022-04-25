require 'rails_helper'

RSpec.describe Travel do

  it 'exists with attributes' do
   travel_data = {:hasTollRoad=>false,
   :hasBridge=>true,
   :boundingBox=>{:lr=>{:lng=>-104.60508, :lat=>38.265427}, :ul=>{:lng=>-104.987602, :lat=>39.738453}},
   :distance=>111.387,
   :hasTimedRestriction=>false,
   :hasTunnel=>false,
   :hasHighway=>true,
   :computedWaypoints=>[],
   :routeError=>{:errorCode=>-400, :message=>""},
   :formattedTime=>"01:45:23",
   :sessionId=>"6266bf11-0266-5f21-02b4-35ab-06b45a90f287",
   :hasAccessRestriction=>false,
   :realTime=>6486,
   :hasSeasonalClosure=>false,
   :hasCountryCross=>false,
   :fuelUsed=>5.42}

   travel = Travel.new(travel_data)
   expect(travel).to be_a Travel
   expect(travel.time).to be_a String
   expect(travel.time).to eq("01:45:23")
  end
end
