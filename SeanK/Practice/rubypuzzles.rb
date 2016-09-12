def first(arr)
	sum = 0
	arr.each {|x| sum = sum+x}
	puts sum
	return arr.reject {|x| x < 10}
end
first([3,5,1,2,7,9,8,13,25,32])

def second(arr)
	arr=arr.shuffle
	arr.each {|x| puts x}
	return arr.reject {|x| x.length < 5}
end
second(['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher'])

def third()
	arr = ("a".."z").to_a
	arr = arr.shuffle
	puts arr.last
	puts arr.first
	vowel = ["a", "e", "i", "o", "u"]
	vowel.each {|x| puts "the first letter is a vowel" if arr.first == x}
end
third()

def fourth()
	arr = []
	(1..10).each{|x| arr.push(rand((55..100)))}
end
fourth()

def fifth()
	arr=[]
	(1..10).each{|x| arr.push(rand((55..100)))}
	arr=arr.sort
	puts arr
	puts arr.min
	puts arr.max
end
fifth()

def sixth()
	string = (1..5).map {(65 + rand(26)).chr}.join
	puts string
end
sixth()

def seventh()
	arr = []
	for i in 1..10
		string = (1..5).map {(65 + rand(26)).chr}.join
		arr.push(string)
	end
	puts arr
end
seventh

