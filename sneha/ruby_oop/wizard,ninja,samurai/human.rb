 class Human
 	attr_accessor :health 
 	attr_accessor :strength 
 	attr_accessor :intelligence 
 	attr_accessor :stealth 
 	
 	def initialize
 		@health = 100
 		@strength = 3
 		@intelligence = 3
 		@stealth = 3
 	end 
 	
 	def display_health
 		puts "Health : %d" % @health
 		puts "Strength : %d" % @strength 
 		puts "Intelligence : %d" % @intelligence
 		puts "Stealth : %d" % @stealth 
 	end

 	def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end 
  

