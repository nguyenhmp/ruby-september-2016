require_relative 'mammal'

class Dragon < Mammal
  
  def initialize
    @health = 170
    self
  end 

  def attack_town 
   @health -= 50
    self
  end 
  
  def fly   
     @health -= 10
    self
  end  
  
  def eat_humans 
    @health += 20
    self
  end

  def display_dragon_health
    puts "This is dragon! Health: " + "#{@health}"  
  end 
end

Dragon.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_dragon_health
# Dragon.new.default_health.display_dragon_health.display_health