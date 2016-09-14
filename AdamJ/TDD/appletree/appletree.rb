class AppleTree
	attr_accessor :height, :age, :apples
	def initialize
		@height = 5
		@age = 0
		@apples = 0
	end
	def year_gone_by
		@apples += 1 if @age>=3
		@age +=1
		@height +=1 if @age<=10
		@apples = 0 if @age>=10
		self
	end
	def pick_apples
		@apples=0
		self 
	end
end