a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

puts "You got #{names.length} names in the 'names' array"
names.each { |i| puts "The name is #{i[:first_name]} #{i[:last_name]}"}

#other way (string concat)
# puts "You got" + names.count.to_s + "names in the 'names' array"
# names.each {|n| puts "The name is " + n.values.join(" ")}