require 'weather_service'

class WardrobeChooser



  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def footwear_for_sun
    @weather_service.sunny? && @weather_service.current_temperature > 70
  end

  def outerwear_for_sun
    @weather_service.sunny?
  end

  def outerwear_for_wind
     @weather_service.windy? && @weather_service.current_temperature < 70
  end

  def outerwear_for_rain
    @weather_service.raining?
  end

  def footwear_for_rain
    @weather_service.raining? && @weather_service.current_temperature < 50
  end

  def footwear_for_snow
    @weather_service.snowing? && @weather_service.current_temperature <=40
  end
  def outerwear_for_snow
    @weather_service.snowing?
  end

  def outerwear_for_cold
    @weather_service.current_temperature < 40
  end

  def outwear_for_cool
    @weather_service.current_temperature < 60
  end



end
