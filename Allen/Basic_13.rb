#Print 1-255
# (1..255).each {|i| puts i, " "}
# (1..255).each {|i| print "#{i}, "}
# (1..255).collect {|i| i}

#print odd numbers between 1-255
# (1..255).find_all {|i| i % 2 == 1 }
# (1..255).each {|i| puts i if i % 2 == 1}
# 1.upto(255) {|i| print i, " " if i % 2 == 1}

#print sum
  # sum = 0
  # (1..255).collect {|i| puts "#{i} #{sum+= i}"}
  # (1..255).each {|i| puts "#{i} #{sum+= i}"}

  # def sum
  #   total = 0
  #   for i in 1..255
  #     total += i
  #     puts "number:#{i}, sum: #{total}"
  #   end
  # end
  # sum

#iterating through an arry
  # x =  [1,3,5,7,9,13]
  # x.each {|i| puts i}

#Find Max
# [1,223,4,5,6].max

#get average
# x = [1,3,5,7,9,13]
# puts x.reduce(0,:+)

# Array with Odd Numbers
# (1..255).find_all {|i| i % 2 == 1}

# Greater Than y
# def great(arr, u)
#   counter = 0
#   arr.each {|i| counter +=1  if i > u }
#   puts counter
# end
#
# Great([1,3,5,7,9,13], 4)

# Square the values
# x = [1, 5, 10, -2]
# x.each {|i| puts i*i}

# Eliminate negative numbers
# def negative(arr)
#   arr.collect {|i| if i < 0 then i = 0 else i end}
#   puts arr
# end
# negative([23, 10, -2])

#Max, Min, and Average
# x = [1, 5, 10, -2]
# puts x.max
# puts x.min
# def total(x)
#   sum = 0
#   x.each {|i| sum+=i}
#   puts sum/x.length
# end
# total([9,5,10])

#Shifting the values in the array
x = [1, 5, 10, 7]
counter = 0
x.each { x[counter] = x[counter+=1] }
x[x.size-1] = 0
puts x
