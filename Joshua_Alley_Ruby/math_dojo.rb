class MathDojo
  attr_accessor :count
  def initialize()
    @count = 0
  end
  def add(*args)
    if args.class == Array
      args.each{|a| puts @count += a}
    else
      puts @count += args
    end
    return self
  end
  def subtract(*args)
    if args.class == Array
      args.each{|b| puts @count -= b}
    else
      puts @count -= args
    end
    return self
  end
end
MathDojo.new.add(2).add(2,5).subtract(3,2).count
