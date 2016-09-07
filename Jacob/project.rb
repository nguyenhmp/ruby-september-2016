class Project
	attr_accessor :name, :description
	def initialize(project, desc)
		@name = project
		@description = desc 
	end	
	def elevator_pitch
		puts "#{@name}: #{@description}"
	end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.name
project1.elevator_pitch