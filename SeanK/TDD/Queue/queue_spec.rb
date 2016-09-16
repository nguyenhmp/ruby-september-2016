require_relative 'queue'
RSpec.describe Queue do
	describe 'initialize' do
		before do 
			@queue = Queue.new
		end

		it 'intializes datastore to empty array and back to 0' do
			expect(@queue.data_store).to eq([])
			expect(@queue.back).to eq(0)
		end
	end
	describe 'attributes' do
		before do
			@queue = Queue.new
		end

		it 'it has a getter for data_store and back' do
			expect(@queue.data_store).to eq([])
			expect(@queue.back).to eq(0)
		end
		it 'it has a getter for max and min' do 
			@queue.enqueue(4)
			@queue.enqueue(8)
			expect(@queue.max).to eq(8)
			expect(@queue.min).to eq(4)
			@queue.dequeue
			expect(@queue.max).to eq(8)
			expect(@queue.min).to eq(8)
			@queue.dequeue
			expect(@queue.max).to eq(nil)
			expect(@queue.min).to eq(nil)
		end
	end

	describe 'behavior' do
		before do
			@queue = Queue.new
		end
		it 'has enqueue method that will add val to data_store' do
			@queue.enqueue(3)
			@queue.enqueue(4)
			@queue.enqueue(5)
			expect(@queue.data_store).to eq([5,4,3])
		end
		it 'has dequeue method that will remove the last element of the array(the first one in)' do
			@queue.enqueue(3)
			@queue.enqueue(4)
			@queue.dequeue
			expect(@queue.data_store).to eq([4])
			@queue.dequeue
			expect(@queue.dequeue).to eq(nil)
		end
	end
end