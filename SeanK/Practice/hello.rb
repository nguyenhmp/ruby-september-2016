puts "hello"
puts "Coding"
puts "Hello"

BEGIN {
	puts "THIS IS REAL FIRST"
}

END {
	puts " THIS IS DEF LAST"
}

x = 3
y = 4
z = x + y

puts z

first_name = "Micheal"
last_name = "Choi"
puts first_name + " " + last_name
puts "THis  guy is a real #{first_name}"