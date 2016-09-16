# test variables
arr = [1, 5, 10, 7, -2]
y = 0

# ONE - print 1-255

(1..255).each { |i| print "#{i} " }

# TWO - print 1-255 odd

(1..255).step(2) { |i| print "#{i} " }

# THREE - print 0-255 with sum

# sum = 0
# (0..255).each { |i| puts "#{i}, #{sum+i}" }

(0..255).each { |i| puts "#{i}, #{(0..i).reduce(:+)}" }

# FOUR - iterate through array

arr.each { |val| puts val }

# FIVE - find max in array

print arr.max

# SIX - get average of array

print arr.reduce(:+).to_f/arr.length

# SEVEN - array of odd numbers

arr2 = (1..255).find_all { |i| i%2==1 }

# EIGHT - array greater than y

puts arr.count { |val| val > y }

# NINE - square the values

arr.map! { |val| val*val }

# TEN - eliminate negative numbers

arr.each_index { |i| arr[i]=0 if arr[i]<0 }

# ELEVEN - min, max, avg

print [arr.min, arr.max, arr.reduce(:+).to_f/arr.length]

# TWELVE - shift values in array

arr.push(arr.shift)

# THIRTEEN - number to string

arr.each_index { |i| arr[i]="Dojo" if arr[i]<0 }
