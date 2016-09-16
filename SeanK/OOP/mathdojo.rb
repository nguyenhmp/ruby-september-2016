class MathDojo
	attr_accessor :sum
	def initialize()
		@sum = 0
		return self
	end
	def add(*args)
		for i in 0...args.length
			if args[i].is_a? Array
				for j in 0...args[i].length
					@sum += args[i][j] 
				end
			else
				@sum += args[i]
			end
		end
		return self
	end
	def subtract(*args)
		for i in 0...args.length
			if args[i].is_a? Array
				for j in 0...args[i].length
					@sum -= args[i][j] 
				end
			else
				@sum -= args[i]
			end
		end
		return self
	end
end
dojo1 = MathDojo.new.add([1,2],3,4).add(1).subtract(3,3).subtract([1,2])
puts dojo1.sum