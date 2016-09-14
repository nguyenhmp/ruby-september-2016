class MathDojo
  attr_accessor :sum
    def initialize()
    @sum = 0
    end
    def  add(*arg)
      @sum += arg.flatten.reduce(:+)
      return self
    end
    def sub(*arg)
      @sum -= arg.flatten.reduce(:+)
      return self
  end
end

dojo1 = MathDojo.new.add([20,20], 1).sub([20,20]).sum
puts dojo1
