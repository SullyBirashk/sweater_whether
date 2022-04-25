require 'rails_helper'

RSpec.describe Forecast do

  it 'exists with attributes' do
   forecast_data = {current_weather: {:date_time=>1650842980, :sunrise=>1650802158, :sunset=>1650851188, :temp=>283.79, :feels_like=>281.77, :humidity=>33, :uvi=>1.48, :visibility=>10000, :conditions=>"overcast clouds", :icon=>"04d"},
 daily_weather:
  [{:date=>1650823200, :sunrise=>1650802158, :sunset=>1650851188, :max_temp=>284.6, :min_temp=>278.26, :conditions=>"overcast clouds", :icon=>"04d"},
   {:date=>1650909600, :sunrise=>1650888477, :sunset=>1650937649, :max_temp=>288.12, :min_temp=>277.4, :conditions=>"scattered clouds", :icon=>"03d"},
   {:date=>1650996000, :sunrise=>1650974798, :sunset=>1651024110, :max_temp=>296.09, :min_temp=>280.29, :conditions=>"scattered clouds", :icon=>"03d"},
   {:date=>1651082400, :sunrise=>1651061120, :sunset=>1651110570, :max_temp=>298.4, :min_temp=>284.4, :conditions=>"overcast clouds", :icon=>"04d"},
   {:date=>1651168800, :sunrise=>1651147442, :sunset=>1651197031, :max_temp=>298.08, :min_temp=>285.54, :conditions=>"broken clouds", :icon=>"04d"}],
 hourly_weather:
  [{:time=>1650841200, :temp=>283.79, :conditions=>"overcast clouds", :icon=>"04d"},
   {:time=>1650844800, :temp=>283.84, :conditions=>"overcast clouds", :icon=>"04d"},
   {:time=>1650848400, :temp=>283.67, :conditions=>"overcast clouds", :icon=>"04d"},
   {:time=>1650852000, :temp=>282.36, :conditions=>"overcast clouds", :icon=>"04n"},
   {:time=>1650855600, :temp=>280.86, :conditions=>"overcast clouds", :icon=>"04n"},
   {:time=>1650859200, :temp=>278.76, :conditions=>"overcast clouds", :icon=>"04n"},
   {:time=>1650862800, :temp=>278.26, :conditions=>"overcast clouds", :icon=>"04n"},
   {:time=>1650866400, :temp=>277.76, :conditions=>"overcast clouds", :icon=>"04n"}]}


   forecast = Forecast.new(forecast_data[:current_weather], forecast_data[:daily_weather], forecast_data[:hourly_weather])
   expect(forecast).to be_a Forecast
   expect(forecast.current_weather).to be_a Hash
   expect(forecast.daily_weather).to be_a Array
   expect(forecast.hourly_weather).to be_a Array
  end
end
