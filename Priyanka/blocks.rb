# def test

# 	puts "You are in the method " 
#   	yield (17)
#   	puts "You are again back to the method" 
#   	yield (57)
# end 
# test {|i| puts "You are in the block #{i}"}

def sum(num)
	puts "num is #{num}"
	x = yield(num)
	puts "x has a value of #{x}"

end

sum(5) {|i| i+i}