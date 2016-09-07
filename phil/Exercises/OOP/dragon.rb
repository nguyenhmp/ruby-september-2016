require_relative 'mammal'
class Dragon < Mammal
    def initialize
        @health = 170
        self
    end
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_human
        @health += 20
        self
    end
    def display_health
        puts 'it me, the dragon!'
        super
    end
end

grazilla = Dragon.new
grazilla.attack_town.attack_town.attack_town.eat_human.eat_human.fly.fly.display_health
