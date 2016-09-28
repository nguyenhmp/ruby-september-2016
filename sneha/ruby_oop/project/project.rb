class Project
  @@team_members = 0
  attr_accessor :name, :description, :team_name

 
  def initialize name, description
    @name = name
    @description = description
  end
  def elevator_pitch
    puts "#{@name}, #{@description}"
  end
  
 def add_to_team
  	@@team_members += 1
  end 
  
  def display
  	puts "Name: #{@name}" 
  	puts "Description: #{@description}"
  	puts "Team Member: #{@@team_members}"
  end 
end

stacy = Project.new('Name', 'Description')
stacy.display
stacy.add_to_team

