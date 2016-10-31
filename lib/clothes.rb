require 'weather_service'

class ClothesChooser

  CLOTHES = {
      '50 degrees' => 'sweater',
      '60 degrees' => 'flannel',
      '70 degrees' => 't-shirt',
      '20 degrees' => 'coat',
      '80 degrees' => 'tank top'
  }
  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def clothes_for_today
    CLOTHES[@weather_service.which]
  end
end