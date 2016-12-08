class WeatherService


  def sunny?
    [true, false][(rand(2))]
  end

  def windy?
    [true, false][(rand(2))]
  end

  def raining?
    [true, false][(rand(2))]
  end

  def snowing?
    [true, false][(rand(2))]
  end

  def current_temperature
    [80, 60, 40, 20][(rand(4))]
  end
end