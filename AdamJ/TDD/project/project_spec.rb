require_relative 'project'
RSpec.describe Project do
  # ...
  # building off our previous example lets add a test to make sure our method returns the correct value
  it 'has a method add_to_team to add team members' do
    #lets create two new projects
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')
    #if we call add_to_team method we should expect to get the new teammember back
    expect(project1.add_to_team('Charles')).to eq('Charles')
    expect(project1.add_to_team('Professor X')).to eq('Professor X')
  end
end