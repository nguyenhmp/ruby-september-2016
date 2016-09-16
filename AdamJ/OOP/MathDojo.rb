class MathDojo
	attr_accessor 
	def initialize
		@sum = 0
		self
	end
	def add(*args)
		args.each{|i| i.kind_of?(Array)?@sum+=i.reduce(:+):@sum+=i}
		self
	end
	def subtract(*args)
		args.each{|i| i.kind_of?(Array)?@sum-=i.reduce(:+):@sum-=i}
		self
	end
	def result
		puts @sum
		self
	end
end

MathDojo.new.add([3,5,6],3).subtract(1,[1,2,3]).result
MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result