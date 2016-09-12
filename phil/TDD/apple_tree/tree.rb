class AppleTree
    attr_reader :height, :age, :apple_count
    def initialize
        @height = 50
        @age = 0
        @apple_count = 0
        self
    end
    def year_gone_by
        @age += 1
        @height += 20 if @age < 11
        @apple_count += rand(9)+1 if @age > 3 and @age < 11
        self
    end
    def pick_apples
        apples = @apple_count
        @apple_count = 0
        apples
    end
end
