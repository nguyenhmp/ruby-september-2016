module MyEnumerable
	def my_each
		for i in 0...self.length
			yield(self[i])
		end	
	end
end

class Array
	include MyEnumerable
end

[3,2,3,4].my_each {|x| puts x}