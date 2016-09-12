class Planet
	attr_reader :name, :description, :population
	def initialize(name,desc,pop)
		@name = name
		@description = desc
		@population = pop
	end
end

class Solar_System
	attr_reader :name, :planetlist, :planetcount
	def initialize(name = 'Milky Way')
		@name = name
		@planetlist = []
		@planetcount = @planetlist.length
	end
	def addplanet(obj)
		if obj.class.ancestors.include?(Planet)
			@planetlist.push(obj)
			@planetcount += 1
			true
		else
			false
		end
	end
	def supernova
		@planetlist = []
		@planetcount = 0
	end
end
