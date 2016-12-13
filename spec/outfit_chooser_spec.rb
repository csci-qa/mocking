#specs for different scenarios

require 'outfit_chooser'
require 'article_chooser'
require 'climate_service'

describe 'outfit chooser' do
  #rain
  it 'knows to use an umbrella when it is raining' do
    outfit_chooser = OutfitChooser.new
    outfit_chooser.climate_service = ClimateService.new
    expect(outfit_chooser.OUTFIT).to eq 'umbrella'
  end

  #snow
  it 'knows to use boots when it is snowing' do
    outfit_chooser = OutfitChooser.new
    outfit_chooser.climate_service = ClimateService.new
    expect(outfit_chooser.OUTFIT).to eq 'boots'
  end

  #warm
  it 'knows to use sandals when it is warm' do
    outfit_chooser = OutfitChooser.new
    outfit_chooser.climate_service = ClimateService.new
    expect(outfit_chooser.OUTFIT).to eq 'sandals'
  end

  #cold
  it 'knows to wear shoes when it is cold' do
    outfit_chooser = OutfitChooser.new
    outfit_chooser.climate_service = ClimateService.new
    expect(outfit_chooser.OUTFIT).to eq 'shoes'
  end

  #sunny
  it 'knows to wear sunglasses when it is sunny' do
    outfit_chooser = OutfitChooser.new
    outfit_chooser.climate_service = ClimateService.new
    expect(outfit_chooser.OUTFIT).to eq 'sunglasses'
  end
end