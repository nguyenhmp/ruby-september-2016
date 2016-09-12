#we are going to have to include our Project class in teh spec file
require_relative 'project'

#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects something
RSpec.describe Project do
  # now we can have Rspec test our project class
  it 'has a getter and setter for name atribute' do
    #now we can test our Project class
    #lets create a new project and make sure we can set the name attribute
    project = Project.new("New Project", "I am a new Project")
    project.name = "Changed Name"
    # we should be able to run that code, now lets make sure its changed.
    # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
    expect(project.name).to eq("Changed Name")
  end

  it 'has a method elevator_pitch to explain name and description' do
    project1 =Project.new('Project1', 'description 1')
    project2 =Project.new('Project2', 'description 2')

    expect(project1.elevator_pitch).to eq("Project1, description 1")
    expect(project2.elevator_pitch).to eq("Project2, description 2")
  end

  it 'has a method that adds a team member team member' do
    project1 =Project.new('Project1', 'description 1')
    project1.new_member("Frank")
    project1.new_member("Pamela")

    expect(project1.members).to eq(["Frank", "Pamela"])
  end
end
