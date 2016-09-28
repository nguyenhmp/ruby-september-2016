class CodingDojo
	@@no_of_branches = 0 #class variables aren't used very much each in the real world 

	def initialize(id, name, address)
		@branch_id = id #instance variable starts with an @ sign - it's available for all methods in that object 
		@branch_name = name
		@branch_address = address
		@@no_of_branches += 1 # @@ is a class variable that is available for all the functions and all the classes 
		puts "\nCreated branch #{@@no_of_branches}" #/n just adds a new line 
	end 

	def hello
		puts "Hello CodingDojo!"
	end 

	def displayAll 
		puts "Branch ID: %d" % @branch_id
		puts "Branch Name: %s" % @branch_name
		puts "Branch Address: %s" % @branch_address
	end
end

branch = CodingDojo.new(357, "DC Coding Dojo", "Washington DC")
#new initializes the codingdojo class and creates the branch. 
#display all calls the method in the class Coding Dojo which displays the branch. 
branch.displayAll

branch2= CodingDojo.new(200, "DC Coding Dojo", "Washington DC")
branch2.displayAll
branch.hello 

#local varaible - defined ina method. begins with a lowercase letter or _. 
#global variable - begins with $ and has a default value of nil.