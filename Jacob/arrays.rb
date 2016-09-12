arr = [3,2,1,6,5,4,9,8,7,0]

arr.at(4)
arr.at(5)
puts arr

puts arr.fetch(10, 'this is a new value')

puts arr.delete(5)
puts arr.delete(10){'This elelment doesnt exist'}

puts arr.reverse

puts arr.length

puts arr.sort
puts arr.sort{|x,y| x<=>y}

puts arr[1..5]
puts arr[2]

puts arr.shuffle

puts arr.join

puts arr.insert(3, "inserted")

puts arr.values_at(2,4,6)





