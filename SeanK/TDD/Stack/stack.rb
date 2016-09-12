class Stack
	attr_reader :data_store, :back
	def initialize
		@data_store = []
		@back = 0
	end
	def push(val)
		@data_store[@data_store.length] = val
		@back += 1
	end
	def pop
		if @data_store.length == 0
			return nil
		else	
			@back -= 1
			@data_store = @data_store.take(@data_store.length - 1)
		end
	end
end

