require_relative 'wizard'
RSpec.describe Wizard do
  it 'check to see that if the wizard has the default health of 50 and intelligence of 25' do
    iceking = Wizard.new
    iceking.show
    expect(iceking.show).to eq("This wizard is at 50 health and at 25 intelligence.")
  end
  it 'has a method that increases health by 10' do
    iceking = Wizard.new
    expect(iceking.heal).to eq(60)
  end
  it 'wizard has a ancestor chain that includes human' do
    iceking = Wizard.new
    puts iceking.class.ancestors.include?(Human)
    expect(iceking.class.ancestors.include?(Human)).to eq(true)
  end
    it "wizard has a fireball method that attacks an object and reduces its health" do
    iceking = Wizard.new
    princess_bubblegum = Wizard.new
    iceking.fireball(princess_bubblegum)
    expect(princess_bubblegum.health).to eq(30)
  end
end
