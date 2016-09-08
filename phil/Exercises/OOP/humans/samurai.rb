require_relative 'human'
class Samurai < Human
    @@samurai_count = 0
    def initialize
        super
        @health = 200
        @@samurai_count += 1
        self
    end
    def death_blow(obj)
        obj.health = 0 if obj.is_a? Human
    end
    def meditate
        @health = 200
    end
    def how_many
        puts "There are #{@@samurai_count} samurai"
    end
end
