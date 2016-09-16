class SLLNode
	attr_accessor :value, :next
	def initialize(val)
		@value = val
		@next = nil
	end
end

class SLL
	attr_accessor :head
	def initialize
		@head = nil
	end
	def insert(val,prevVal = nil)
		node = SLLNode.new(val)
		current = @head
		if @head == nil
			@head = node
		elsif prevVal == nil
			while current.next != nil
				current = current.next
			end
			current.next = node
		else
			found = false
			while current.next != nil
				if current.value == prevVal
					temp = current.next
					current.next = node
					node.next = temp
					found = true
				end
				current = current.next
			end
			if found == false
				current.next = node
			end
		end
	end
	def find(val)
		if @head == nil 
			return nil
		else
			current = @head
			while current != nil
				if val == current.value
					return current
				end
				current = current.next
			end
		end
	end
	def remove(val)
		if @head == nil
			return nil
		elsif @head.value == val
			@head = @head.next
			return true
		else
			current = @head
			while current.next.next != nil
				if val == current.next.value
					temp = current.next.next
					current.next.next = nil
					current.next = temp
					return true
				end
				current = current.next
			end
			if current.next.value == val
				current.next = nil
				return true
			end
			return nil
		end
	end
	def display_nodes
		arr = []
		current = @head
		while current != nil
			arr.push(current)
			current = current.next
		end
		puts arr
	end

	def display_values
		arr = []
		current = @head
		while current != nil
			arr.push(current.value)
			current = current.next
		end
		return arr
	end

	def add(val)
		node = SLLNode.new(val)
		if @head == nil
			@head = node
		else
			current = @head
			while current.next != nil
				current = current.next
			end
			current.next = node 
		end
	end

	def removeAll
		@head = nil
	end

	def how_many
		if @head == nil
			return 0
		else 
			counter = 0
			current = @head
			while current != nil
				counter += 1
				current = current.next
			end
			return counter
		end
	end
	def min 
		if @head == nil
			return nil
		else 
			min = @head.value
			current = @head
			while current != nil
				if current.value < min
					min = current.value
				end
				current = current.next
			end
			return min
		end
	end
	def max 
		if @head == nil
			return nil
		else 
			max = @head.value
			current = @head
			while current != nil
				if current.value > max
					max = current.value
				end
				current = current.next
			end
			return max
		end
	end
end