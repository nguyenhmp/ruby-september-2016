# Ruby Puzzles Assignemnt----Coding Dojo

# # print the sum of all the numbers in the array
# array = [3,5,1,2,7,9,8,13,25,32]
# count = 0
# greater =[]
# array.map{|i| count += i}
# puts count
# array.reject!{|j| j <10}
# print array


# array =["John", "KB", "Oliver", "Cory", "Mathew", "Christoper"]
# puts array.shuffle
# array.reject!{|k| k.length < 5}
# print array

# array = ("a".."z").to_a
# array.shuffle!
# puts array.last
# if ["a","e","i","o","u"].include?(array.first)
#   puts "This is bonkers!"
# else
#   print array.first
# end


# array = (10.times.map{Random.rand(55..100)}).sort
# puts array.first
# puts array.last

# print rand(10000..99999)

array=[]
for i in 1..10
array.push((0...10).map{65.+(rand(25)).chr}.join)
end
print array
