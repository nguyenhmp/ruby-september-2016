# x=[3,5,1,2,7,9,8,13,25,32]
# def sum_and_greater(arr)
# 	puts arr.reduce(:+)
# 	print arr.find_all{|i| i>10}
# end
# y=['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']

# def shuffle_and_5long(arr)
# 	print arr.shuffle!
# 	print arr.find_all{|i| i.length>5}
# end

# alphabet=[]
# ('a'..'z').each{|let| alphabet.push(let)}
# def alphabet_shifter(arr)
# 	print arr.shuffle!
# 	print arr.last
# 	print arr.first
# 	vowels=['a','e','i','o','u']
# 	puts "I'm a vowel" if vowels.include?arr.last
# end

# def tenrando()
# 	print 10.times.map{ 55 + Random.rand(46)}
# end

# def tenrandosort()
# 	arr=10.times.map{ 55 + Random.rand(46)}
# 	print arr.sort!
# 	print arr.first
# 	print arr.last
# end

def randstr()
	randomstring=""
	5.times{randomstring<<(65+rand(26)).chr}
	return randomstring
end

def randstrarr()
	arr=10.times.map{randstr()}
	return arr
end
# sum_and_greater(x)
# shuffle_and_5long(y)
# alphabet_shifter(alphabet)
# tenrando()
# tenrandosort()
# puts randstr()
print randstrarr()

