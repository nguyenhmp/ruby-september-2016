class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
		self
	end
	def elevator_pitch
		print "#{@name}, #{@description}" 
	end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"