class Project
  attr_accessor :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
  def name
    puts @name
  end
  def elevator_pitch
    puts "#{name}, #{description}"
  end
end

project1 = Project.new("project 1", "Descrioption 1")
puts project1.name
project1.elevator_pitch
