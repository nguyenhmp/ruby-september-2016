require_relative 'mammal'
class Dragon < Mammal
  @health = 170
  def fly
    @health -= 10
    return self
  end
  def attack_town
    @health -= 50
    return self
  end
  def eat_humans
    @health += 20
    return self
  end
end

samuel = Dragon.new
samuel.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
