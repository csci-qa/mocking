require 'weather_service'

class OutfitChooser

  OUTFITS = {
      'halloween' => 'orange',
      'turkey day' => 'brown',
      'christmas' => 'red',
      'easter' => 'blue',
      'none' => 'white'
  }

  attr_accessor :season_service

  def initialize
    @season_service = SeasonService.new
  end

  def outfit_for_today
    OUTFITS[@weather_service.which?]
  end
end