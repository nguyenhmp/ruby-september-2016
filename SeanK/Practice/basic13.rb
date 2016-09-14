#print 1-255
(1..255).each {|x| puts x}
#print odd 1-255
(1..255).each {|x| puts x unless x % 2 == 0}
#print sum and number
sum = 0; (1..255).each {|x| sum=sum + x; puts "New Number: #{x} Sum: #{sum}"}
#iterate through array
def iterate(arr)
	arr.each {|x| puts x }
end
#max array
def max(arr)
	puts arr.max
end
#avg array
def avg(arr)
	puts (arr.inject(0) {|sum, x| sum + x})/arr.count
end
#oddarr
def oddarr()
	y =[];(1..255).each {|x| y.push(x) unless x % 2 == 0}
end
#greater than y
def greatery(arr,y)
	sum=0; arr.each{|x| sum=sum+=1 if x > y }; puts sum
end
#sqaures of arry
def squarearr(arr)
	arr=arr.each.with_index {|x,i| arr[i] = x*x}; puts arr; 
end
#removeneg
def removeneg(arr)
	arr = arr.each.with_index {|x,i| arr[i] = 0 if x < 0 } ; puts arr
end
#max min avg array
def maxminavg(arr)
	puts arr.max; puts arr.min; puts (arr.inject(0) {|sum, x| sum + x})/arr.count;
end
#shift
def shift(arr)
	arr = arr.each.with_index {|x,i| arr[i] = arr[i+1]} ; arr[arr.length-1]=0; 
end
shift([1,23,33,4])
#remove neg replace with string
def removenegtostring(arr)
	arr = arr.each.with_index {|x,i| arr[i] = 'Dojo' if x < 0 }; puts arr
end
