class Human
	attr_accessor :strength, :stealth, :intelligence, :health
	def initialize
		@strength=3
		@stealth=3
		@intelligence=3
		@health=100
	end
	def attack(object)
		if object.class.ancestors.include?Human
			object.health-=10
			true
		else
			false
		end
	end
end

class Wizard < Human
	def initialize
		super()
		@health=50
		@intelligence=25
	end
	def heal
		@health+=10
		self
	end
	def fireball(object)
		object.health-=20
		self
	end
end

class Ninja < Human
	def initialize
		super()
		@stealth=175
	end
	def steal(object)
		attack(object)
		@health+=10
		self
	end
	def get_away
		@health-=15
		self
	end
end

class Samurai < Human
	@@count=0
	def initialize
		super()
		@health=200
		@@count+=1
	end
	def deathblow(object)
		object.health=0
		self
	end
	def meditate
		@health=200
		self
	end
	def self.how_many
		puts @@count
	end
end






