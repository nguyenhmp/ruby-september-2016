class Project
    attr_accessor :name, :description
    def initialize(name, description)
        @name = name
        @description = description
        self
    end
    def elevator_pitch
        puts @name, @description
        self
    end
end

project1 = Project.new("Awesome Project", "A project that is v awesome")
puts project1.description
project1.elevator_pitch
