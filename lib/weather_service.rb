class WeatherService
  def which
    ['sweater', 't-shirt', 'flannel', 'coat', 'tank top'][rand(5)]
  end

  def raining
    'raining' 'not_raining'
  end

  def snowing
    'snowing' 'not_snowing'
  end

end