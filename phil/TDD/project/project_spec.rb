require_relative 'project'
RSpec.describe Project do
    it 'has a getter and setter for name attribute' do
        project = Project.new("Project name", "project description")
        project.name = "New Name"
        expect(project.name).to eq("New Name")
    end
    it 'has a getter and setter for description' do
        project = Project.new("Project name", "project description")
        project.description = "This is a new description"
        expect(project.description).to eq("This is a new description")
    end
    it 'has method elevator_pitch that returns name and description' do
        project1 = Project.new("Project 1", "Description 1")
        project2 = Project.new("Project 2", "Description 2")
        expect(project1.elevator_pitch).to eq("Project 1, Description 1")
        expect(project2.elevator_pitch).to eq("Project 2, Description 2")
    end
    it 'has method add_to_team that adds people to an array' do
        project3 = Project.new("Project 3", "Description 3")
        expect(project3.team.length).to eq(0)
        project3.add_to_team("Phil").add_to_team("Adam")
        expect(project3.team).to eq(["Phil", "Adam"])
    end
end
