class CodingDojo
  @@no_of_branches = 0
  def initialize(id, name, address) # this is the contructor function
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "\nCreated branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def displayAll #display all puts the details of the new object
    puts "Branch ID: %d" % @branch_id # %d sets the data type to integer
    puts "Branch Name: %s" % @branch_name # %s sets the data type to a string
    puts "Branch Address: %s" % @branch_address
  end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.displayAll

#local variables
  # defined within a method
  #begins with a lowercase letter or _

# intance variables
  # start with @
  # resides in a class within a method
  # available to all methods within an objects
  # has a default value of nil

#class variables
  #starts with @@
  # avaiable to all of the functions and instances

#global variables start with $
  # we really never need to use it
