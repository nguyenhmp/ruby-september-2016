class Project
  attr_accessor :name, :description, :team_members
  def initialize name, description
    @name = name
    @description = description
    @team_members = []
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def add_to_team(name)
  	@team_members.push(name)
  end
end