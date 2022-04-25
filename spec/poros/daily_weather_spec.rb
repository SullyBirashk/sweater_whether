require 'rails_helper'

RSpec.describe DailyWeather do

  it 'exists with attributes' do
   weather_data = { weather: [{ :description=>"broken clouds", :icon=>"04n"}],
                    dt: 1650769874,
                    sunrise: 1650715839,
                    sunset: 1650764727,
                    temp: {max: 295.72, min:277.7}
                  }

   weather = DailyWeather.new(weather_data)
   expect(weather).to be_a DailyWeather
   expect(weather.conditions).to eq("broken clouds")
   expect(weather.date).to eq("04/23/22 08:11:14 PM")
   expect(weather.icon).to eq("04n")
   expect(weather.sunrise).to eq("04/23/22 05:10:39 AM")
   expect(weather.sunset).to eq("04/23/22 06:45:27 PM")
   expect(weather.max_temp).to eq(295.72)
   expect(weather.min_temp).to eq(277.7)
  end
end
