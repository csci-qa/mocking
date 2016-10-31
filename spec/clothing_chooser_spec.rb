require 'clothes'
require 'apparel'
require 'weather_service'

describe 'Clothing chooser' do
  it 'knows to pick sweater when it is 50 degrees' do
    clothes_chooser = ClothesChooser.new
    clothes_chooser.weather_service = MockWeatherService.new
    expect(clothes_chooser.clothes_for_today).to eq 'sweater'
  end
end

describe 'Raining apparel' do
  it 'knows to pick umbrella when it is raining' do
    apparel_chooser = ApparelChooser.new
    apparel_chooser.weather_service = MockRainingApparel.new
    expect(apparel_chooser.rain_apparel_for_today).to eq 'umbrella'
  end
end

describe 'Snowing apparel' do
  it 'knows to pick snow boots when it is snowing' do
    apparel_chooser = ApparelChooser.new
    apparel_chooser.weather_service = MockSnowingApparel.new
    expect(apparel_chooser.snow_apparel_for_today).to eq 'snow boots'
  end
end

class MockWeatherService
  def which
    '50 degrees'
  end
end

class MockRainingApparel
  def raining
    'raining'
  end
end

class MockSnowingApparel
  def snowing
    'snowing'
  end
end