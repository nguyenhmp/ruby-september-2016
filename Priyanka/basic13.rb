a=1..255

# --------Print 1-255----------------
# a.each {|i| print "#{i} "} 



# --------Print odd numbers between 1-255----------------

# a.each {|i| print "#{i} " if i%2==1} 


# --------------------Print Sum--------------------------
# b=0..255
# count=0
# b.each {|i| puts "New number: #{i} Sum:#{count+=i}" }


# --------------------Iterating through an array--------------------------

# x=[1,3,5,7,9,10]
#  x.each{|i| puts "Element of array #{i}" }


# --------------------Find Max--------------------------------------------

# arr=[5,7,1,-7,0]
# arr=[-9,-34,-99]
# puts arr.minmax

# ----------------------Get Average----------------------------------------


# arr=[1,-82,3,101]
# sum=0
# arr.each {|i|  sum+=i}
# average=sum/arr.length
# puts average


# --------------------Array with Odd Numbers-------------------------------
# a=1..255
# puts array.push(a.select(&:odd?))
# puts a.select(&:even)
# print (a.select {|a| a%2 != 0})

# --------------------Greater Than y----------------------------------------

# a=[1,2,3,4,5]
# first=a[0]
# num=2
# print (a.select{|i| i>num}).length

# --------------------Square the values----------------------------------------


# a=[1,2,3,4,5]
# print a.collect {|i| i*i}

# --------------------Eliminate Negative Numbers-------------------------------
# x=[1,3,-4]
# newArr=[]
# for i in x
# 	if  i> 0
#    		newArr.push(i)
# 	else
#   		newArr.push(0)
# 	end  
# end
# puts newArr.to_s



# --------------------Max, Min, and Average------------------------------------
# newArray=[]
# arr=[5,7,1,-7,0]
# # arr=[-9,-34,-99]
# newArray.push(arr.minmax)
# sum=0
# arr.each {|i|  sum+=i}
# average=sum/arr.length
# newArray.push(average)
# print newArray.flatten

# ---------------------Shifting the values in the array---------------------------

# x=[1,2,3,4,5]
# x.delete_at(0)
# x.push(0)
# puts x.to_s

# ---------------------Number to string--------------------------------------------
x=[1,3,-4]
newArr=[]
for i in x
	if  i> 0
   		newArr.push(i)
	else
  		newArr.push("Dojo")
	end  
end
puts newArr.to_s






























