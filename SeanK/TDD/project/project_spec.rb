require_relative 'project'
RSpec.describe Project do
  it 'has a method elevator_pitch to explain name and description' do
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')
    project1.add_to_team("new")

    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
    expect(project1.team_members).to eq(["new"])
  end
end