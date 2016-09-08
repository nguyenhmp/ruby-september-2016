class Planet
    attr_reader :name, :description, :population
    def initialize(name, description, population)
        @name = name
        @description = description
        @population = population
        self
    end
end

class SolarSystem
    attr_reader :name, :planets, :planet_count
    def initialize(name='Milky Way')
        @name = name
        @planets = []
        @planet_count = @planets.length
        self
    end
    def add_planet(planet)
        @planets << planet if planet.is_a? Planet
        @planet_count = @planets.length
        self
    end
    def supernova
        @planets = []
        @planet_count = @planets.length
        self
    end
end
