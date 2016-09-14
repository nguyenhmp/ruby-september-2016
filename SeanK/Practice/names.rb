a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a,b,c,d,e]

def namesfunc(arr)
	puts "You got #{arr.length} in the 'names' array"
	arr.each {|x| puts "The name is '#{x[:first_name]} #{x[:last_name]}'"}
end
namesfunc(names)