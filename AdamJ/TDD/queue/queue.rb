class Queue
	attr_accessor :data_store
	attr_reader :back, :max, :min
	def initialize
		@data_store = []
		@back=0
		@max= max
		@min= @data_store.min
	end
	def enqueue(val)
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
	def dequeue
		val = @data_store[0]
		unless @data_store == []
			@back.times{|i| @data_store[i]=@data_store[i+1]}
			@back-=1
			@data_store[@back]
			return val
		else
			return nil
		end
	end
	def max
		@data_store.max
	end
	def min
		@data_store.min
	end
end