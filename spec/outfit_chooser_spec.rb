
require 'wardrobe_chooser'
require 'weather_service'

describe 'outfit chooser' do
  it 'knows to wear sandals when it is above 80 degrees and sunny' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSunnyFootWear.new
    expect(wardrobe_chooser.footwear_for_sun).to eq true
  end

  it 'knows to wear sunglasses when it is sunny' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSunnyWear.new
    expect(wardrobe_chooser.outerwear_for_sun).to eq true
  end

  it 'knows to wear boots when it rains' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainyFootWear.new
    expect(wardrobe_chooser.outerwear_for_rain).to eq true
  end
  it 'knows to carry an umbrella when it rains' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockRainyFootWear.new
    expect(wardrobe_chooser.outerwear_for_rain).to eq true
  end

  it 'knows to wear a coat when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockSnowyWear.new
    expect(wardrobe_chooser.outerwear_for_snow).to eq true
  end


  it 'knows to wear a windbreaker when it is windy and colder than 70' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWindyWear.new
    expect(wardrobe_chooser.outerwear_for_wind).to eq true
  end

  it 'knows to wear a jacket when it is colder than 60' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockCoolWear.new
    expect(wardrobe_chooser.outwear_for_cool).to eq true
  end

  it 'knows to wear a coat when it is colder than 40' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockColdWear.new
    expect(wardrobe_chooser.outerwear_for_cold).to eq true
  end
end







class MockSunnyFootWear
  def sunny?
    true
  end

  def current_temperature
    90
  end

end

class MockSunnyWear
  def sunny?
    true
  end
end

class MockRainyFootWear
  def raining?
    true
  end
end

class MockSnowyFootWear
  def snowing?
    true
  end
  def current_temperature
    40
  end
end

class MockSnowyWear
  def snowing?
    true
  end
end



class MockWindyWear
  def windy?
    true
  end
  def current_temperature
    65
  end
end
class MockRainyWear
  def raining?
    true
  end
end

class MockCoolWear
  def current_temperature
    55
  end
end

class MockColdWear
  def current_temperature
    35
  end
end


