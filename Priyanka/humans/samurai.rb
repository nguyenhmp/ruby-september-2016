require_relative "humans"
class Samurai < Human
	@@count = 0

	def initialize
		@health = 200
		@@count += 1
	end

	def death_blow(obj)
		attack(obj)
		obj.health = 0
	end

	def meditate
		@health = 200
	end

	def self.how_many
		puts "There are #{self.class.samurai_counter} samurais"
	end
end