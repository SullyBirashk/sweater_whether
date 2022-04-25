require 'rails_helper'

RSpec.describe CurrentWeather do

  it 'exists with attributes' do
   weather_data = { weather: [{ :description=>"broken clouds", :icon=>"04n"}],
                    dt: 1650769874,
                    feels_like: 280.94,
                    humidity: 29,
                    sunrise: 1650715839,
                    sunset: 1650764727,
                    temp: 282.61,
                    uvi: 0,
                    visibility: 10000
                  }

   weather = CurrentWeather.new(weather_data)
   expect(weather).to be_a CurrentWeather
   expect(weather.conditions).to eq("broken clouds")
   expect(weather.date_time).to eq("04/23/22 08:11:14 PM")
   expect(weather.feels_like).to eq(280.94)
   expect(weather.humidity).to eq(29)
   expect(weather.icon).to eq("04n")
   expect(weather.sunrise).to eq("04/23/22 05:10:39 AM")
   expect(weather.sunset).to eq("04/23/22 06:45:27 PM")
   expect(weather.temp).to eq(282.61)
   expect(weather.uvi).to eq(0)
   expect(weather.visibility).to eq(10000)
  end
end
