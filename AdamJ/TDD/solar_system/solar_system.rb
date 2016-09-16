class Planet
	attr_accessor :name, :description, :population
	def initialize(name, description, population)
		@name=name
		@description=description
		@population=population
	end
end

class SolarSystem
	attr_accessor :name, :planets, :count
	def initialize(name='Milky Way')
		@name=name
		@planets = []
		@count = 0
	end
	def add_planet(planet)
		if planet.class.ancestors.include?(Planet) 
			@planets.push(planet)
			@count+=1
			true
		else
			false
		end
	end
	def supernova
		@planets = []
		@count = 0
		self
	end
end
