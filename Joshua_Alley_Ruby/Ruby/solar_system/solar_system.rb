class Planet
  attr_accessor :name, :description, :population
  def initialize(name, desc, pop)
    @name = name
    @description = desc
    @population = pop
  end
end
class SolarSystem
  attr_accessor :name, :planets
  def initialize(name="Milky Way")
    @name = name
    @planets = []
  end
  def count_planets
    count = @planets.length
    return count
  end
  def add_planet(obj)
    if obj.class.ancestors.include?(Planet)
      @planets.push(obj.name)
    else
      puts "This ain't no space rock!"
    end
  end
  def super_nova
    @planets = []
  end
end

# trout = SolarSystem.new
# jupiter = Planet.new("Jupiter","Gas Giant","4000000")
# trout.add_planet(jupiter)
# print trout.planets
# trout.super_nova
# print trout.planets
