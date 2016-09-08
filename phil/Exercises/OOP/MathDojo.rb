class MathDojo
    attr_accessor :result
    def initialize
        @result = 0
        self
    end
    def add(*args)
        args.each { |x| x.is_a?(Enumerable) ? x.each { |y| self.add(y) } : @result += x }
        self
    end
    def subtract(*args)
        args.each { |x| x.is_a?(Enumerable) ? x.each { |y| self.subtract(y) } : @result -= x }
        self
    end
end

math = MathDojo.new
puts math.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
