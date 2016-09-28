
#Number 1: 

# def number1(arr)
# sum = 0
# arr.each {|n|sum+=n;}
# puts sum 
# arr.each {|n| puts n if n > 10; }
# end 

# number1([3, 5, 1, 2, 7, 9, 8, 13, 25, 32])

#Number 2: 
# arr= ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts arr.shuffle
# arr.each {|n| puts n if n.length > 5}

#Number 3: 
# arr = Array("a".. "z")
# puts arr.shuffle.last 
# puts arr.shuffle.first


# If the first letter in the array is a vowel, have it display a message
# letters_array = Array("a".."z")
# shuffled_letters = letters_array.shuffle
# puts ["a","e","i","o","u"].include?(shuffled_letters.first) ? shuffled_letters.first+" is a vowel" : shuffled_letters.first+" is not a vowel"

# Number 4: # Generate an array with 10 random numbers between 55-100.
# random_array = Array.new
# 10.times { random_array.push(rand(55..100)) }
# print random_array

# # have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. 
# puts random_array.sort

# # Next, display the minimum value in the array as well as the maximum value.
# puts random_array.max
# puts random_array.min

# Number 5: # Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
# puts string_array = (1...6).map{(65+rand(26)).chr}

# # shorter way
# 5.times { print rand(65..90).chr }

# Number 6: # Generate an array with 10 random strings that are each 5 characters long
# string_array = Array.new
# 10.times { string_array.push((1..5).map{ rand(65..90).chr }.join) } 
# print string_array