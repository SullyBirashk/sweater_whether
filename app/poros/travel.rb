class Travel
  attr_reader :time

  def initialize(data)
    @time = data[:formattedTime]
  end

end
