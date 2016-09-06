class Human
	attr_accessor :strength, :stealth, :health, :intelligence
	def initialize
		@strength = 3
		@stealth = 3 
		@intelligence = 3
		@health = 100
	end
	def attack(attacked)
		if attacked.class.ancestors.include?(Human)
			attacked.health -= 10
		end
	end

end

class Wizard < Human
	def initialize
		super()
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
	end
	def fireball(attacked)
		if attacked.class.ancestors.include?(Human)
			attacked.health -=20
		end
	end
end

class Ninja < Human
	def initialize
		super()
		@intelligence = 175
	end
	def steal(attacked)
		attack(attacked)
		@health += 10
	end
	def get_away
		@health -=15
	end
end

class Samurai < Human
	@@numberofsam = 0
	def initialize
		super()
		@health = 200
		@@numberofsam += 1
	end
	def death_blow(attacked)
		if attacked.class.ancestors.include?(Human)
			attacked.health = 0
		end
	end
	def meditate
		@health = 200
	end
	def how_many
		puts @@numberofsam
	end

end

wizard1 = Wizard.new
wizard2 = Wizard.new
puts wizard1.health
wizard1.heal
puts wizard1.health
wizard1.fireball(wizard2)
puts wizard2.health

ninja1 = Ninja.new
ninja1.steal(wizard2)
puts wizard2.health
puts ninja1.health
ninja1.get_away
puts ninja1.health

sam1 = Samurai.new
sam2 = Samurai.new
sam1.death_blow(ninja1)
puts ninja1.health
wizard1.fireball(sam1)
puts sam1.health
sam1.meditate
puts sam1.health
sam1.how_many