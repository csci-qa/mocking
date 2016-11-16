require 'weather_service'

class WardrobeChooser

  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end

  def umbrella_for_today
    @weather_service.raining?
  end


  def rain_boots_for_today
    @weather_service.raining?
  end

  #def coat?
    #need to update this and put the different coats in this one method
  #end

  def winter_coat_for_today
    @weather_service.snowing? || (@weather_service.current_temp < 40)
  end


  def winter_boots_for_today
    @weather_service.snowing? || (@weather_service.current_temp <= 40)
  end


   def light_jacket_for_today
    @weather_service.current_temp >40 && @weather_service.current_temp <=65
  end

  def tshirt_for_today
    @weather_service.current_temp >66
  end

  def sandals_for_today
    !@weather_service.raining? && @weather_service.current_temp >66
  end

end
