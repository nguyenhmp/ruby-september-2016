class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @health = 100
    @stength = 3
    @intelligence = 3
    @stealth = 3
  end

  def attack(other)
    if other.class.ancestors.include?(Human)
      other.health -=7
      return true
    else
      return false
    end
  end
end


rick = Human.new
zombies = Human.new

puts rick.attack(zombies)
puts zombies.health
puts zombies.attack(rick)
puts zombies.attack(rick)
puts zombies.attack(rick)
puts rick.health
