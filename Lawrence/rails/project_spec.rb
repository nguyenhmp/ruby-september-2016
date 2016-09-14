require_relative 'project'
RSpec.describe Project do
  it "hass a method elevator_pitch to ex" do
  project1 = Project.new('Project 1', 'description 1', 'newTeam')
  project2 = Project.new('Project 2', 'description 2', 'newTeam')
  project1.add_to_team("newTeam")

  expect(project1.elevator_pitch).to eq("Project 1 description 1")
  expect(project2.elevator_pitch).to eq("Project 2 description 2")
  expect(project1.team_members).to eq(["newTeam"])
  end
end
