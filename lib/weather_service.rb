class WeatherService
  def currentTemperature
    [0..100][rand(1)]
  end

  def snowing?
    [true,false][rand(2)]
  end

  def raining?
    [true,false][rand(2)]
  end
end

