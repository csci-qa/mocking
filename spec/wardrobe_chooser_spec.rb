require 'wardrobe_chooser'


describe 'wardrobe chooser' do

  it 'knows to pick umbrella when it is raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainingWeatherService.new
    expect(wardrobe_chooser.umbrella_for_today).to eq true
  end
  it 'knows not to pick an umbrella when it is not raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotRainingWeatherService.new
    expect(wardrobe_chooser.umbrella_for_today).to eq false
  end

  it 'knows to pick rain boots when it is raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainingWeatherService.new
    expect(wardrobe_chooser.rain_boots_for_today).to eq true
  end

  it 'knows not to pick rain boots when it is not raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotRainingWeatherService.new
    expect(wardrobe_chooser.rain_boots_for_today).to eq false
  end

  it 'knows to pick a winter coat when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSnowingWeatherService.new
    expect(wardrobe_chooser.winter_coat_for_today).to eq true
  end

  it 'knows not to pick a winter coat when it is not snowing unless the temperature is less than 40' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotSnowingButColdWeather.new
    expect(wardrobe_chooser.winter_coat_for_today).to eq true # change to true?
  end

  it 'knows not to pick a winter coat when it is not snowing or the temperature is above 40' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotSnowingOrColdWeather.new
    expect(wardrobe_chooser.winter_coat_for_today).to eq false
  end

  it 'knows to pick winter boots when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSnowingWeatherService.new
    expect(wardrobe_chooser.winter_boots_for_today).to eq true
  end

  it 'knows not to pick winter boots when it is not snowing unless the temperature is between 0 - 40' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotSnowingButColdWeather.new
    expect(wardrobe_chooser.winter_boots_for_today).to eq true
  end

  it 'knows not to pick a winter boots when it is not snowing or the temperature is above 40' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockNotSnowingOrColdWeather.new
    expect(wardrobe_chooser.winter_boots_for_today).to eq false
  end

  it 'knows to pick a light jacket when it is between 41 and 65 degrees' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockCoolWeatherService.new
    expect(wardrobe_chooser.light_jacket_for_today).to eq true
  end

  it 'knows to pick a tshirt when it is above 65 degrees' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWarmWeatherService.new
    expect(wardrobe_chooser.tshirt_for_today).to eq true
  end

  it 'knows to pick sandals when it is above 65 degrees and it is not raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWarmNoRainWeatherService.new
    expect(wardrobe_chooser.sandals_for_today).to eq true
  end


end

class MockRainingWeatherService
  def raining?
    true
  end
end

class MockNotRainingWeatherService
  def raining?
    false
  end
end

class MockSnowingWeatherService
  def snowing?
    true
  end
end

class MockNotSnowingButColdWeather
  def snowing?
    false
  end
  def current_temp
    30
  end
end

class MockNotSnowingOrColdWeather
  def snowing?
    false
  end
  def current_temp
      65
  end
end

class MockCoolWeatherService
  def current_temp
    60
  end
end

class MockWarmWeatherService
  def current_temp
    80
  end
end

class MockWarmNoRainWeatherService
  def raining?
    false
  end
  def current_temp
    80
  end
end