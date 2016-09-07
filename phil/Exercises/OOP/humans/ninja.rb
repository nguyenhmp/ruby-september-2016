require_relative 'human'
class Ninja < Human
    @@ninja_count = 0
    def initialize
        super
        @stealth = 175
        @@ninja_count += 1
        self
    end
    def steal(obj)
        attack(obj)
        @health += 10
    end
    def escape
        @health -= 15
    end
end
