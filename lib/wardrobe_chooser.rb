require 'weather_service'

class WardrobeChooser


  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def shoes_for_today
    # if snowing wear boots,
    if @weather_service.snowing?
      return 'boots'
    end
    # if raining wear galoshes,
    if @weather_service.raining?
      return 'galoshes'
    end
    # if none and temp > 70 wear sandals,
    if @weather_service.currentTemperature > 70
      return 'sandals'
    end
    # if none and temp < 71 wear sneakers
    if @weather_service.currentTemperature < 71
      return 'sneakers'
    end

  end

  def umbrella_for_today
  #   if raining use umbrella
    @weather_service.raining?

  end

  def coat_for_today
    # if cold wear a coat
    if @weather_service.currentTemperature < 60
      return true

    end
    # if warm and raining wear a coat
    if @weather_service.currentTemperature > 60 && @weather_service.raining?
      return true

    end

  end

end

