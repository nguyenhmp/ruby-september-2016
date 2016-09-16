class Human
    attr_accessor :health, :strength, :stealth, :intelligence
    def initialize
        @health = 100
        @strength = 3
        @stealth = 3
        @intelligence = 3
        self
    end
    def attack(obj)
        obj.is_a? Human ? obj.health -= 10 : @health -= 5
        # hurts self if attacking non-human object
    end
end
