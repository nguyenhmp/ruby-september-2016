class Stack
	attr_accessor :data_store
	attr_reader :back
	def initialize
		@data_store = []
		@back=0
	end
	def push(val)
		@data_store[@data_store.length]=val
		@back +=1
		self
	end
	def display
		output=[]
		for i in 0...@back
			output << @data_store[i]
		end
		output
	end
	def pop
		val = @data_store[@data_store.length-1]
		unless @data_store == []
			@data_store[@data_store.length]=@data_store.length-1
			@back-=1
			return val
		else
			return nil
		end
	end
end

stack = Stack.new
stack.push(5)
stack.pop
print stack.display