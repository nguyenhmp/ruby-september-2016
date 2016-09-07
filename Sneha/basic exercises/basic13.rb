
# Number 1: Print 1-255
# Write a program (sets of instructions) that would print all the numbers from 1 to 255.
# (1..255).each {|n| puts n} #print command prints it in one line {|n| print n, " "} 
							#.each method will perform the block/condition on each element of the range/array


# Number 2 (Print odd numbers between 1-255): 
# (1..255).each {|n| puts n unless n % 2 == 0} 
#(1..255).each {|n| puts n if n % 2 == 1}


# Number 3: 
#(Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New Number: 2 Sum: 3
# New number: 3 Sum: 6
# New Number: 255 Sum: ___) 

# sum = 0 
# (1..255).each {|n| sum+=n; puts"newNumber:#{n} Sum:#{sum}" }

# sum = 0 
# (1..255).each {|n| sum+=n; puts"newNumber:%d Sum:%d" %[n, sum]} - need double quotes to interpolate 

#Number 4:
#(Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.  
#Being able to loop through each member of the array is extremely important.)

# def iterate(arr) 
	# arr.each {|n| puts n} #first way
	# for n in (0...arr.length) #for loop in ruby
# 		puts arr[n] 
# 	end 
# end 

# iterate([5,6,7,8])

#Number 5:
#(Write a program (sets of instructions) that takes any array and prints the maximum value in the array. 
#Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero) 
 
#def max(arr)
# 	max = arr[0]
# 	arr.each {|n| max=n if max <n } # max is going to equal n if max is less than n
# 	puts max 
# end

#cheating way using built in method
# def max(arr)
# 	puts arr.max 
# end 
# max(["My", "Name", "is", "sneha"])

#for loop 
# def max(arr)
# 	max= arr[0]
# 	for n in (0...arr.length)
# 		if max < arr[n] 
# 			max = arr[n] 
# 		end
# 	end
# 	puts max 
# end 
# max([1,2, 10, 5, -1])

#Number 6 (Average values in the array):

# def average(arr)
# 	sum=0 
# 	arr.each {|n| sum+=n }
# 	puts sum/arr.length 
# end 

#for loop 
# def average(arr)
# 	sum=0
# 	for n in (0...arr.length)
# 		sum+=arr[n] 
# 	end 
# 	puts sum/arr.length
# end 

# average([2, 4, 6, 8, 10])

#Number 7 (Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255):
# arr=[]
# (1..255).each {|n| arr.push(n) if n %2 == 1}
# puts arr 

#Number 8(Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y): 

# def greaterY(arr, y)
# 	counter = 0 
# 	arr.each {|n| counter+=1 if n > y }
# 	puts counter 
# end 

# def greaterY(arr, y)
# 	counter = 0
# 	for n in (0...arr.length)
# 		if arr[n] > y
# 			counter+=1
# 		end
# 	end
# 	puts counter 
# end  

# greaterY([2,3,4], 2)

#Number 9: Square 
# def square(arr)
# 	arr.each {|n| puts n*n}
# end 

# square([1,3,9])

#Number 10 Eliminate Negative Numbers. 
#Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.

# def eliminate(arr)
# 	arr.each {|n| if n>0 then puts n else puts 0 end}
# end 
# eliminate([1, -1, 3, 4,])

#Number 11 Max, Min, Average: 

# def maxMinAve(arr)
# 	puts arr.max 
# 	puts arr.min
# 	puts arr.reduce(:+)*1.0/arr.length 
#another way to do average - if you don't mulitply by 1.0(float) it will reduce down
# end 

# maxMinAve([1,1,1,1,2])

#Number 12 Shifting the values in the array: 
# def shift(arr)
# counter = 0
# arr.each {arr[counter] = arr[counter+=1] }
# arr[arr.size-1] = 0
# print arr 
# end 
# shift([1, 5, 10, 7, -2])

# Number 13 Number to string: 
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. 
# For example if array x is initially [-1, -3, 2],
# after your program is done that array should be['Dojo', 'Dojo', 2].
# def numbertoString(arr)
# arr.each { |x| if x>0 then puts x else puts 'Dojo' end }
# arr.each { |x| x>0 ? (puts x) : (puts 'Dojo') }
# end 

# numbertoString([1,2,-4, 3, -5])
