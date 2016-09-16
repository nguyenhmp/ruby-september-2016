

def test 
  yield 5, 200
  puts "You are in the method test" 
  yield 100, 200
end 

test{ |x, y|
 	puts x, y
 	puts "hi"*x
 	puts "hi"*y
}

def each callback
	for i in 0..arr.length
		yield arr[i]
	end
end

test(function(x, y){

})