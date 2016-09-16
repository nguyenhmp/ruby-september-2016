require_relative 'human'

class Wizard < Human

	def initialize
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
	end

	def fireball(harry)
		attack(harry)
		harry.health -= 20
	end
end
