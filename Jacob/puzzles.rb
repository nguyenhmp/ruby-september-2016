#1
arr=[3,5,1,2,7,9,8,13,25,32]
puts arr.inject(0){|sum,x| sum + x}, arr.find_all{|i| i > 10}

#2
arr2 = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts arr2.each{|x| x}, arr2.find_all{|i| i.length > 5} 

#3
arr3 = ('a'..'z').to_a.shuffle
first = arr3.first 
last = arr3.last	
puts last, first
if first =='a'|| first =='e' || first=='i' || first=='o'|| first=='u'
	puts "#{first} is a vowel!"	
end

#4
puts 10.times.map{rand(55..100)}

#5
puts 10.times.map{rand(55..100)}.sort
puts 10.times.map{rand(55..100)}.max
puts 10.times.map{rand(55..100)}.min

#6
str = ''
5.times{str<<(65+rand(26)).chr}
puts str

#7
arr=[]
def makeRando
	str ='' 
	5.times{str<<(65+rand(26)).chr}
	puts str
end
10.times{arr.push(makeRando)}
puts arr





