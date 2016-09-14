class SLLNode
	attr_accessor :val, :next
	def initialize(val)
		@val = val
		@next = nil
	end
end

class SLL
	attr_accessor :head
	def initialize
		@head=nil
	end
	def insert(val, previousVal)
		node = SLLNode.new(val)
		return nil if @head==nil 
		current = @head
		unless current.next==nil
			if current.val==previousVal
				node.next=current.next
				current.next=node
			end
		end
		self
	end
	def find(node)
		return nil if @head==nil 
		current = @head
		unless current==nil
			if current==node
				return current
			end
		end
		nil
	end
	def remove(val)
		return nil if @head==nil 
		current = @head
		if @head.val==val
			@head=nil if current.next==nil
			@head=current.next
			return self
		end
		unless current==nil
			if current.next.val==val
				current.next=current.next.next
				self
			end
		end
		nil
	end
	def display_nodes
		output = [@head]
		return output if @head==nil 
		current = @head
		while current.next!=nil
			current=current.next
			output.push(current)
		end
		output
	end
	def display_values
		output = []
		return output if @head==nil 
		output = [@head.val]
		current = @head
		while current.next!=nil
			current=current.next
			output.push(current.val)
		end
		output
	end
	def add(node)
		if @head==nil 
			@head=node
			return self
		end
		current = @head
		while current.next!=nil
			current=current.next
		end
		current.next=node
		self
	end
	def remove_all
		return self if @head==nil 
		@head=nil
		self
	end
	def count
		return nil if @head==nil 
		total = 1
		current = @head
		while current.next!=nil
			total+=1
			current=current.next
		end
		return total
	end
end

