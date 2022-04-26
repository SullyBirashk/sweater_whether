class HourlyWeather
  attr_reader :time, :temp, :conditions, :icon

  def initialize(data)
    @time = Time.at(data[:dt]).to_datetime.strftime('%r')
    @temp = data[:temp]
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end
end
