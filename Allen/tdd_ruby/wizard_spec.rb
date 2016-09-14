require_relative 'wizard'

RSpec.describe Wizard do
  it 'shows health and intelligence of wizard' do
    expect(Wizard.new.health).to eq("health: 50")
    expect(Wizard.new.intelligence).to eq("intelligence: 25")

  end
end
