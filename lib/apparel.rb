require 'weather_service'

class ApparelChooser
  APPAREL = {
    'raining' => 'umbrella',
    'not_raining' => 'no umbrella',
    'not_snowing' => 'tennis shoes',
    'not_raining_or_snowing' => 'sandals',
    'snowing' => 'snow boots'
  }

  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def rain_apparel_for_today
    APPAREL[@weather_service.raining]
  end

  def snow_apparel_for_today
    APPAREL[@weather_service.snowing]
  end
end