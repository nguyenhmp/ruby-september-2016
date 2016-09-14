# (1..255).each {|i| print "#{i}, "} 

# (1..255).find_all { |i| i % 2 == 1 }

# (1..255).each {|i| print "#{i} " if i%2==1} 

# sum = 0
# (1..255).each {|i| print "#{i} , sum=" } 

# number = 30
# if number % 3 == 0 && number % 5 == 0
#   puts "FizzBuzz"
# elsif number % 3 == 0
#   puts "Fizz"
# elsif number % 5 == 0
#   puts "Buzz"
# end


i = 0
num = 5
while i < num do
   puts "Inside the loop i = #{i}"
   i +=1
end

# i = 0
# num = 5
# begin
#    puts "Inside the loop i = #{i}"
#    i +=1
# end while i< num

# a=["ant", "bear", "cat"]
# puts a.any? {|word| word.length >= 5}

# b=["ant", "bear", "cat"]
# print b.each{|word| print word, "--"}

# a=(1..5)
# puts a.collect { "*" }

# b=(1..10)
# print b.reject { |i| i % 3 == 0 }




