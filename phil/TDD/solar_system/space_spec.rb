require_relative 'space'
RSpec.describe Planet do
    it "has a name, description, and population" do
        planet1 = Planet.new('planet', 'a planet', 1)
        expect(planet1).to have_attributes(:name => 'planet', :description => 'a planet', :population => 1)
    end
end

RSpec.describe SolarSystem do
    it "is given a name when initialized, or is named 'Milky Way' if a name is not given by user" do
        system1 = SolarSystem.new('Bananas')
        system2 = SolarSystem.new
        expect(system1.name).to eq('Bananas')
        expect(system2.name).to eq('Milky Way')
    end
    it 'has an attribute planets that lists all planets that have been added to it' do
        system1 = SolarSystem.new('Bananas')
        expect(system1.planets).to be_empty
        planet1 = Planet.new('planet', 'a planet', 1)
        system1.add_planet(planet1)
        expect(system1.planets).to eq([planet1])
    end
    it 'should only accept objects from the Planet class when adding planets' do
        system1 = SolarSystem.new('Bananas')
        system1.add_planet('not a planet')
        expect(system1.planets).to be_empty
        planet1 = Planet.new('planet', 'a planet', 1)
        system1.add_planet(planet1)
        expect(system1.planets).to eq([planet1])
    end
    it 'has a planet_count attribute that returns the number of planets in the system' do
        system1 = SolarSystem.new('Bananas')
        expect(system1.planet_count).to eq(0)
        planet1 = Planet.new('planet', 'a planet', 1)
        planet2 = Planet.new('tenalp', 'another planet', 100)
        system1.add_planet(planet1).add_planet(planet2)
        expect(system1.planet_count).to eq(2)
    end
    it 'has method supernova that removes all planets from system and resets planets and planet_count attributes' do
        system1 = SolarSystem.new('Bananas')
        planet1 = Planet.new('planet', 'a planet', 1)
        planet2 = Planet.new('tenalp', 'another planet', 100)
        system1.add_planet(planet1).add_planet(planet2)
        system1.supernova
        expect(system1.planets).to be_empty
        expect(system1.planet_count).to eq(0)
    end
end
