require_relative 'sllist'
RSpec.describe SLLNode do
	before do
		@node = SLLNode.new(5)
		@node2 = SLLNode.new(7)
	end
	describe 'attributes' do
		it 'has an attribute val and an attribute next' do
			expect(@node.val).to eq(5)
			expect(@node.next).to be_falsey
		end
	end
end

RSpec.describe SLL do
	before do
		@list = SLL.new
		@node = SLLNode.new(5)
		@node2 = SLLNode.new(6)
		@list.add(@node).add(@node2)
	end
	describe 'attributes' do
		it 'has an attribute head' do
			expect(@list.head).to be_truthy
		end
	end
	describe 'behavior' do
		it 'has an insert method which adds ' do
			expect(@list.insert(5, 6)).to be_truthy
		end
		it 'has a find method' do
			expect(@list.find(@node)).to be_truthy
		end
		it 'has a remove method' do
			expect(@list.remove(5)).to be_truthy
		end
		it 'has a display_node method' do
			expect(@list.display_nodes).to eq([@node, @node2])
		end
		it 'has a display_values method' do
			expect(@list.display_values).to eq([5,6])
		end
		it 'has a method to add a node to the list' do
			@node3 = SLLNode.new(9)
			@list.add(@node3)
			expect(@list.display_nodes).to eq([@node, @node2, @node3])
		end
		it 'has a method to rempove all of the nodes from the list' do
			@list.remove_all
			expect(@list.display_nodes).to eq([nil])
		end
		it 'has a method to count all of the nodes in the list' do
			expect(@list.count).to eq(2)
		end
	end
end