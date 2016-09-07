class MathDojo
	def initialize
		@start = 0
		self
	end
	def add(*args)
			@start += args.flatten.reduce(:+)
		self
	end
	def subtract(*args)
			@start -= args.flatten.reduce(:+)
		self
	end
	def result
		puts @start
		self
	end
end
MathDojo.new.add(2).add(2,5).subtract(2,3).add([3,3,4,5,6]).subtract([2,3,4,5]).result