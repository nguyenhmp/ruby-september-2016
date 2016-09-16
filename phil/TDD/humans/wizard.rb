require_relative 'human'
class Wizard < Human
    @@wizard_count = 0
    def initialize
        super
        @health = 50
        @intelligence = 25
        @@wizard_count += 1
        self
    end
    def heal
        @health += 10
    end
    def fireball(obj)
        obj.health -= 20 if obj.is_a? Human
    end
end
