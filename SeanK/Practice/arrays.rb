a = ["fun", "times", "be here", 4]
b = [2,3,10,8]
#at method
puts a.at(2)
#fetch method
puts a.fetch(4, "Not here")
#delete method
a.delete("fun")
puts a
#reverse method
puts a.reverse
#length method
puts a.length
#sort method
b=b.sort
puts b
#slice method
c = b.slice(2..3)
puts c
#shuffle method
c = c.shuffle
#join
d=c.join
puts d
#insert method
b.insert(0,"Love")
puts b
#values_at method
puts a.values_at(1,2).join('-')

