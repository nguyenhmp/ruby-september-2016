class Human
	attr_accessor :strength, :intelligence, :health, :stealth
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(human)
		if human.class.ancestors.include?(Human)
			human.health -= 10
			true
		else
			false
		end
	end
end
