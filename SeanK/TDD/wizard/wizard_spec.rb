require_relative 'human'
RSpec.describe Wizard do
	it 'has a method to initialize health to 50 and intelligence 25' do
		wizard1 = Wizard.new
		expect(wizard1.health).to eq(50)
		expect(wizard1.intelligence).to eq(25)
	end
	it 'has a heal method to heal the health by 10' do
		wizard1 = Wizard.new
		expect(wizard1.heal).to eq(60)
	end
	it 'has human as an ancestor' do
		wizard1 = Wizard.new
		expect(wizard1.class.ancestors.include?(Human)).to eq(true)
	end
	it 'has a fireball method to damage another object' do
		wizard1 = Wizard.new
		wizard2 = Wizard.new
		wizard1.fireball(wizard2)
		expect(wizard2.health).to eq(30)
	end 
end