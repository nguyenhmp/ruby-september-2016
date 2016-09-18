class Mathdojo < ActiveRecord::Base
    attr_accessor :result
	def initialize
		@result = 0
	end
	def add(*x)
		if x.class == Array
			@result += x.flatten.reduce(:+)
		else
			@result += x
		end
		self
	end
	def subtract(*x)
		if x.class == Array
			@result -= x.flatten.reduce(:+)
		else
			@result -= x
		end
		self
	end
	def multiply_by_the_sum(*x)
		if x.class == Array
			@result = @result *= x.flatten.reduce(:+)
		else
			@result = @result *= x
		end
		self
	end
	def reset
		@result = 1
		self
	end
end
