#OutfitChooser class

require 'climate_service'

class OutfitChooser
  OUTFIT = { 'rain' => 'umbrella', 'snow' => 'boots', 'warm' => 'sandals', 'cold' => 'shoes', 'sun' => 'sunglasses' }
  attr_accessor :climate_service

  #new instance of ClimateService class
  def new_climate_service
    @climate_service = ClimateService.new
  end

  #methods for different weather
  def raining
    OUTFIT[@climate_service.rain]
  end

  def snowing
    OUTFIT[@climate_service.snow]
  end

  def warm
    OUTFIT[@climate_service.warm]
  end

  def cold
    OUTFIT[@climate_service.cold]
  end

  def sun
    OUTFIT[@climate_service.sun]
  end
end