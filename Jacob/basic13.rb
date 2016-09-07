def oneto255
	(1..255).each{|num| puts num}
end
oneto255

def odds1to255
	puts (1..255).find_all{|i| i % 2 != 0} 
end
odds1to255
# sum255
def sum255
$sum = 0
(1..255).each{|i| puts "The number is #{i}", "The sum is #{$sum += i}"}
end
# # Iterate an array
def iterateArray(arr)
	arr.each{|i| puts i}
end
iterateArray([1,3,5,7,9,13])
# # print max
def maximum(arr)
	puts arr.max
end
maximum([1,3,5,7,9,13])
# # get average
def avg(arr)
	sum = 0
	arr.each{|i| puts (sum += i)/arr.length}
end
avg([1,3,5,7,9,13,200])

#array with odd numbers
def oddArray
	arr=[]
	arr.push((1..255).find_all{|x| x % 2 != 0})
	puts arr
end
oddArray

def sqval(arr)
	arr.map!{|x| x*x}
	puts arr
end
sqval([1,2,3,4,5])

def greaterthany(arr, val)
	arr.each{|i| puts i if i > val}
end
greaterthany([1,3,5,7,9,13], 8)

# def zerooutnegs(arr)
# 	arr.map!{|i| i=0 if i < 0}
# 	puts arr
# end
# zerooutnegs([1,3,5,7,9,13])