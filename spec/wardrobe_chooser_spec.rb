require 'wardrobe_chooser'


describe 'wardrobe chooser' do

  it 'knows to recommend umbrella when it is raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainingWeatherService.new
    expect(wardrobe_chooser.umbrella_for_today).to eq true
  end

  it 'knows to recommend a coat when it is cold' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockColdWeatherService.new
    expect(wardrobe_chooser.coat_for_today).to eq true
  end

  it 'knows to recommend a coat when it is warm and raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWarmCoatWeatherService.new
    expect(wardrobe_chooser.coat_for_today).to eq true
  end

  it 'knows to recommend boots when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSnowWeatherService.new
    expect(wardrobe_chooser.shoes_for_today).to eq 'boots'
  end

  it 'knows to recommend galoshes when it is raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockGaloshesWeatherService.new
    expect(wardrobe_chooser.shoes_for_today).to eq 'galoshes'
  end

  it 'knows to recommend sandals when it is warm' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSandalsWeatherService.new
    expect(wardrobe_chooser.shoes_for_today).to eq 'sandals'
  end

  it 'knows to recommend sneakers when it is cool' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSneakersWeatherService.new
    expect(wardrobe_chooser.shoes_for_today).to eq 'sneakers'
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

class MockColdWeatherService
  def currentTemperature
    40
  end
end

class MockWarmCoatWeatherService
  def currentTemperature
    75
  end

  def raining?
    true
  end
end

class MockSnowWeatherService
  def snowing?
    true
  end
end

class MockSneakersWeatherService
  def currentTemperature
    60
  end

  def snowing?
    false
  end

  def raining?
    false
  end


end

class MockSandalsWeatherService
  def currentTemperature
    80
  end

  def snowing?
    false
  end

  def raining?
    false
  end
end

class MockGaloshesWeatherService
  def currentTemperature
    80
  end

  def snowing?
    false
  end

  def raining?
    true
  end
end


