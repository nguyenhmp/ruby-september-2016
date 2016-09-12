require_relative 'solar_system'
RSpec.describe Planet do
  it 'there is a class called Planet' do
    jupiter = Planet.new("Jupiter","Gas Giant","4000000")
    puts jupiter.class.ancestors.include?(Planet)
    expect(jupiter.class.ancestors.include?(Planet)).to eq(true)
  end
  it 'the planet class should have name, description, and population' do
    jupiter = Planet.new("Jupiter","Gas Giant","4000000")
    expect(jupiter.name).to eq("Jupiter")
    expect(jupiter.description).to eq("Gas Giant")
    expect(jupiter.population).to eq("4000000")
  end
end

RSpec.describe SolarSystem do
  it 'Solar System should take the name that it is passed' do
    trout = SolarSystem.new('Frank')
    expect(trout.name).to eq("Frank")
  end
  it 'Solar System should be named Milky Way when a name is not passed' do
    trout = SolarSystem.new
    expect(trout.name).to eq("Milky Way")
  end
  it 'Solar System should contain a list of its planets' do
    trout = SolarSystem.new
    expect(trout.planets).to eq([])
  end
  it 'There should be a count of how many planets are in the solar system' do
    trout = SolarSystem.new
    expect(trout.count_planets).to eq(0)
  end
  it 'planets added to the solar system should only be in the planet class' do
    trout = SolarSystem.new
    jupiter = Planet.new("Jupiter","Gas Giant","4000000")
    trout.add_planet(jupiter)
    expect(jupiter.class.ancestors.include?(Planet)).to eq(true)
  end
  it 'Solar System should have a method called super_nova that destroys all fo the planets in it.' do
    trout = SolarSystem.new
    jupiter = Planet.new("Jupiter","Gas Giant","4000000")
    trout.add_planet(jupiter)
    expect(trout.planets).to eq(['Jupiter'])
    expect(trout.super_nova).to eq([])
  end
end
