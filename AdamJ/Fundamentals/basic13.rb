#print 1-255
# (1..255).each{|num| puts num}

#print odd numbers between 1-255
# (1..255).each{|num| puts num unless num%2 == 0}

#print sum
# total = 0; (1..255).each{|num| puts "New number:#{num} Sum:#{total+=num}"}

x = [-1, 1,3,5,7,9,13]

#itterate through array
# x.each{|num| puts num}

#find max
# max = x[0]; x.each{|num| max = num if num>max}; puts max

#find average
# total=0.0; x.each{|num| total+=num}; puts avg=total/x.length

#Greater than Y
# Y = 3; count = 0; x.each{|num| count+=1 if num>Y}; puts count

#Square the values
# x.map!{|num| num*num}; print x 

#Eliminate negs
# x.map!{|num| num<0?num=0:num}; print x 

#max, min, avg
# max = 0; min = 0; total = 0; x.each{|num| max = num if num>max; min = num if num<min; total+=num}; puts max, min, avg=total/x.length

#shift values
# f=0; z=x[0]; x.map!{|num| f+=1; f==(x.length)?num=z:x.fetch(f, num)}; print x
# print x.push(x.shift)

#number to string
# x.map!{|num| num<0?num='Dojo':num}; print x 

