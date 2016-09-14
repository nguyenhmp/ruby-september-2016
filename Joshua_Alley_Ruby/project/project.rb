class Project
  attr_accessor :name, :description, :members
  def initialize(name, description)
    @name = name
    @description = description
    @members=[]
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def new_member(name)
    @members.push(name)
  end
end
