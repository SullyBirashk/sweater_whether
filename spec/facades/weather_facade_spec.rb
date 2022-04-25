require 'rails_helper'

RSpec.describe WeatherFacade do

  it 'returns current weather' do
    lat = 39.738453
    lng = -104.984853
    weather = WeatherFacade.find_weather(lat, lng)

    expect(weather[:current_weather]).to be_a CurrentWeather
    expect(weather[:current_weather].conditions).to be_a String
    expect(weather[:current_weather].date_time).to be_a String
    expect(weather[:current_weather].feels_like).to_not be_nil
    expect(weather[:current_weather].humidity).to be_a Integer
    expect(weather[:current_weather].icon).to be_a String
    expect(weather[:current_weather].sunrise).to be_a String
    expect(weather[:current_weather].sunset).to be_a String
    expect(weather[:current_weather].temp).to be_a Float
    expect(weather[:current_weather].uvi).to_not be_nil
    expect(weather[:current_weather].visibility).to be_a Integer

    expect(weather[:daily_weather].first).to be_a DailyWeather
    expect(weather[:daily_weather].first.date).to be_a String
    expect(weather[:daily_weather].first.sunrise).to be_a String
    expect(weather[:daily_weather].first.sunset).to be_a String
    expect(weather[:daily_weather].first.max_temp).to be_a Float
    expect(weather[:daily_weather].first.min_temp).to be_a Float
    expect(weather[:daily_weather].first.conditions).to be_a String
    expect(weather[:daily_weather].first.icon).to be_a String

    expect(weather[:hourly_weather].first).to be_a HourlyWeather
    expect(weather[:hourly_weather].first.time).to be_a String
    expect(weather[:hourly_weather].first.temp).to be_a Float
    expect(weather[:hourly_weather].first.conditions).to be_a String
    expect(weather[:hourly_weather].first.icon).to be_a String
  end
end
