require 'rails_helper'

RSpec.describe HourlyWeather do

  it 'exists with attributes' do
   weather_data = { weather: [{ :description=>"broken clouds", :icon=>"04n"}],
                    dt: 1650769874,
                    temp: 295.72
                  }

   weather = HourlyWeather.new(weather_data)
   expect(weather).to be_a HourlyWeather
   expect(weather.conditions).to eq("broken clouds")
   expect(weather.time).to eq("04/23/22 08:11:14 PM")
   expect(weather.icon).to eq("04n")
   expect(weather.temp).to eq(295.72)
  end
end
