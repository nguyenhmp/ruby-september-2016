class Project
	attr_accessor :name
	attr_accessor :desc
	def initialize(p_name, p_desc)
		@name = p_name
		@desc = p_desc
		self
	end
	def elevator_pitch()
		puts "#{@name} is the project name, #{@desc} is the description of the project"
		self
	end
end

project1 = Project.new("Freedom", "for all humans in this world").elevator_pitch
puts project1.name
puts project1.desc
