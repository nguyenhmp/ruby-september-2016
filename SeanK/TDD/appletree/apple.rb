class AppleTree
	attr_reader :height, :age, :apples
	def initialize
		@height = 0
		@age = 0
		@apples = 0
	end
	def year_gone_by
		if @age >= 3 && @age < 10
			@apples += 10
			@height +=3
		elsif @age < 3
			@height+=3
		end
		@age +=1
	end
	def pickapples
		@apples = 0
	end
end