b = ["love", "freedom", "Slags"]
#any? iterator
puts b.any? {|x| x.length >= 2}
#each iterator
b.each {|x| puts x + 'love'}
#collect iterator
b = b.collect{|x| x + 'love'}
puts b
#map  iterator
c = b.collect{|x| x + 'too'}
puts c
#detect iterator
d= c.detect {|x| x.length > 1}
puts d
#find_all iterator
e=(1..10).find_all {|x| x < 5}
puts e
#reject iterator
e =(1..10).reject {|x| x < 5}
puts e
#upto iterator
11.upto(20) {|x| puts x}
