#1 Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
# x = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# x.each {|i| sum+=i }
# puts sum
# x.find_all {|i| i > 10}

#2 Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
# x = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
# x.shuffle
# puts x.find_all {|i| i.length > 5}

#3 Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message
# x =  ("a".."z").to_a
# y = x.shuffle
# puts y
# puts y[y.size - 1]
# z = y.find {|i| y[0]}
# puts z
# puts ['a','e','i','o','u'].include? z
# # puts 'thats a vowel'

#4/#5 Generate an array with 10 random numbers between 55-100.
    # Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.
# x = Array.new(10) { rand(50..100)}
# y = x.sort
# print y
# puts y.min
# puts  y.max

#6 Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
# y = (0..5).map {(65+rand(26)).chr }.join
# print y

#7 Generate an array with 10 random strings that are each 5 characters
x = Array.new
10.times { x.push((1..5).map{ rand(65..90).chr }.join) }
puts x
