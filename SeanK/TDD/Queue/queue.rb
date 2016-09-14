class Queue
	attr_reader :data_store, :back, :max, :min
	def initialize
		@data_store = []
		@back = 0
		@max = nil
		@min = nil
	end

	def enqueue(val)
		if @data_store.length == 0
			@max = val
			@min = val
		elsif @max < val
			@max = val
		elsif @min > val
			@min = val
		end

		for x in (@data_store.length).downto(0)
			@data_store[x] = @data_store[x-1]
		end
		@data_store[0] = val
	end	

	def dequeue
		if @data_store.length == 0
			return nil
		else	
			if @max == @data_store[data_store.length-1]
				@max = @data_store[0]
				for i in 1...@data_store.length-1
					if @max < @data_store[i]
						@max = @data_store[i]
					end
				end
			end
			if @min == @data_store[data_store.length-1]
				@min = @data_store[0]
				for i in 1...@data_store.length-1
					if @min > @data_store[i]
						@min = @data_store[i]
					end
				end
			end
			@back -= 1
			@data_store = @data_store.take(@data_store.length - 1)
			if data_store.length == 0
				@max = nil
				@min = nil
			end
		end
	end
end