require 'color_chooser'

describe 'color chooser' do
  it 'knows to pick white when it is not a season' do
    color_chooser = ColorChooser.new
    color_chooser.season_service = MockSeasonService.new
    expect(color_chooser.color_for_today).to eq 'white'
  end
end

class MockSeasonService
  def which?
    'none'
  end
end