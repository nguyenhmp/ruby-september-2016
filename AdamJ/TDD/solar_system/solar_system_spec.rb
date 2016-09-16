require_relative 'solar_system'
RSpec.describe Planet do
	it 'is a class called Planet' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		expect(earth).to eq(earth)
	end  
	it 'has a name, description and population when initialized' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		expect(earth.name).to eq('Earth')
		expect(earth.description).to eq('Big blue circle')
		expect(earth.population).to eq(1000)
	end  
end

RSpec.describe SolarSystem do
	it 'is a class called SolarSystem' do
		andromeda = SolarSystem.new('andromeda')
		expect(andromeda).to eq(andromeda)
	end  
	it 'is initialized with a name, otherwise name defaults to Milky Way' do
		andromeda = SolarSystem.new('andromeda')
		milkyway = SolarSystem.new
		expect(andromeda.name).to eq('andromeda')
		expect(milkyway.name).to eq('Milky Way')
	end  
	it 'should contain an array of all planets in it' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		milkyway = SolarSystem.new
		milkyway.add_planet(earth)
		expect(milkyway.planets).to eq([earth])
	end  
	it 'should contain a count of planets in it' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		milkyway = SolarSystem.new
		milkyway.add_planet(earth)
		expect(milkyway.count).to eq(1)
	end  
	it 'should only add a planet with the add_planet method if it is from the planets class' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		milkyway = SolarSystem.new
		milkyway.add_planet(earth)
		expect(milkyway.add_planet(earth)).to eq(true)
	end  
	it 'should contain a supernova method that destroys all of the planets in it' do
		earth = Planet.new('Earth', 'Big blue circle', 1000)
		milkyway = SolarSystem.new
		milkyway.supernova
		expect(milkyway.count).to eq(0)
	end  
end
