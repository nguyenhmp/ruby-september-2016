require_relative 'human_and_wizard'
RSpec.describe Wizard do
	it 'has a default health of 50 and intelligence of 25' do
		harryp = Wizard.new
		expect(harryp.health).to eq(50)
		expect(harryp.intelligence).to eq(25)
	end  
	it 'has a heal method that increases health by 10' do
		harryp = Wizard.new
		harryp.heal
		expect(harryp.health).to eq(60)
	end  
	it 'has a heal method that increases health by 10' do
		harryp = Wizard.new
		harryp.heal
		expect(harryp.health).to eq(60)
	end  
	it 'has an ancestor chain that includes Human' do
		harryp = Wizard.new
		expect(harryp.class.ancestors.include?(Human)).to eq(true)
	end  
	it 'has a fireball method that attacks an object and reduces the object\'s health' do
		harryp = Wizard.new
		marco = Ninja.new
		harryp.fireball(marco)
		expect(marco.health).to eq(80)
	end  
end