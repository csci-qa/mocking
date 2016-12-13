#ArticleChooser class specifies clothing

require 'climate_service'

class ArticleChooser
  ARTICLE = { 'rain' => 'raincoat', 'snow' => 'coat', 'warm' => 'tanktop', 'cold' => 'jacket', 'sunny' => 'sunglasses' }
  attr_accessor :climate_service

  #new instance of ClimateService class
  def new_climate_service
    @climate_service = ClimateService.new
  end

  #directs to ClimateService methods for different articles of clothing depending on the current weather
  def articles
    ARTICLE[@climate_service.clothes]
  end
end