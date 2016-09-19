#part 1 
# class MathDojo
# 	attr_accessor :sum #this lets sum be a part of the methods (used for callbacks/chaining/variables)
# 	def initialize()
# 		@sum = 0 
# 		return self 
# 	end 
	
# 	def add(*num)
# 		@sum = num.each.inject(@sum) {|sum, num| sum + num} #inject sum to be able to chain methods and use it  
# 		return self 
# 	end

# 	def subtract(*num)
# 		@sum = num.each.inject(@sum) {|sum, num| sum - num}  
# 		return self   
# 	end 
# end  

# dojo1 = MathDojo.new.subtract(10,2).add(20,20).sum 
# puts dojo1

#part 2 
class MathDojo
	attr_accessor :sum #accessor allows the value to be changed throughout the methods (you can use reader and writer if you want to limit the use)
	
	def initialize()
		@sum = 0  
	end 
	
	def add(*arg)
		@sum += arg.flatten.reduce(:+)  
		return self 
	end
	def subtract(*arg)
		@sum -= arg.flatten.reduce(:+)   
		return self 
	end
end  

dojo1 = MathDojo.new.add([20,20]).subtract([20,20], 1).sum
puts dojo1

dojo2 = MathDojo.new #if you had sum set as a reader or writer 
dojo2.sum = 90
puts dojo2.sum
