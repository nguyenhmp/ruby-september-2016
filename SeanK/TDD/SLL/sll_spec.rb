require_relative 'sll'
RSpec.describe SLLNode do
	describe 'initialization' do
		before do 
			@node = SLLNode.new(1)
		end
		it 'has value that is set with passed parameter and next is set to nil' do
			expect(@node.next).to eq(nil)
			expect(@node.value).to eq(1)
		end
	end

	describe 'attributes' do
		before do
			@node = SLLNode.new(1)
			@node2 = SLLNode.new(2)
		end
		it 'has a getter and setter for value' do
			@node.value = 10
			expect(@node.value).to eq(10)
		end
		it 'has a getter and setter for next' do
			@node.next = @node2
			expect(@node.next).to eq(@node2)
		end
	end
end

RSpec.describe SLL do
	describe 'initialization' do
		before do
			@list = SLL.new
		end
		it 'initializes head to nil' do 
			expect(@list.head).to eq(nil)
		end
	end

	describe 'attributes' do
		before do
			@list = SLL.new
			@node = SLLNode.new(3)
		end
		it 'has a getter and setter for head' do
			@list.head = @node2
			expect(@list.head).to eq(@node2)
		end
	end

	describe 'add,insert and find behaviors' do
		before do
			@list = SLL.new
		end
		it 'has a method that inserts a new node with a passed val, after a node with passed prevVal,
		 	if prevVal is undefined or not found in the list the new node is put at the end of the list' do
			@list.insert(2)
			@list.insert(5)
			expect(@list.head.next.value).to eq(5)
			@list.insert(7,6)
			expect(@list.head.next.next.value).to eq(7)
			@list.insert(3,2)
			expect(@list.head.next.value).to eq(3)

		end
		it 'has a find method that returns the node if the value is found or nil if not' do
			@list.insert(2)
			node = @list.find(2)
			expect(node.value).to eq(2)
			node = @list.find(3)
			expect(node).to eq(nil)
			@list.insert(3)
			@list.insert(5)
			node = @list.find(5)
			expect(node.value).to eq(5)
		end
		it 'has a method to add a node with the passed in value' do 
			@list.add(2)
			@list.add(3)
			expect(@list.head.value).to eq(2)
			expect(@list.head.next.value).to eq(3)
		end
	end

	describe 'remove and show behaviors' do 
		before do
			@list = SLL.new
			@list.add(2)
			@list.add(3)
			@list.add(4)
		end
		it 'has a remove method that returns true when the node with the passed val is found and removes it otherwise returns nil' do
			expect(@list.remove(4)).to eq(true)
			expect(@list.remove(3)).to eq(true)
			expect(@list.remove(2)).to eq(true)
			expect(@list.remove(78)).to eq(nil)
		end
		it 'has a method to show all the nodes' do
			@list.display_nodes
		end
		it 'has a method to show all the values' do
			expect(@list.display_values).to eq([2,3,4])
		end
		it 'has a method to remove all the nodes' do 
			@list.removeAll
			expect(@list.head).to eq(nil)
		end 
		it 'has a method to count all the nodes' do 
			expect(@list.how_many).to eq(3)
		end
		it 'has a method to return max value of all nodes' do
			expect(@list.max).to eq(4)
		end
		it 'has a method to return min value of all nodes' do
			expect(@list.min).to eq(2)
		end
	end

end