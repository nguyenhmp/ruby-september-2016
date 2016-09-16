require_relative 'stack'
RSpec.describe Stack do 
	describe 'initialize' do
		before do 
			@stack = Stack.new
		end
		it 'initializes data_store to [], back to 0' do
			expect(@stack.data_store).to eq([])
			expect(@stack.back).to eq(0)
		end
	end
	describe 'attribute' do
		before do
			@stack = Stack.new
		end
		it 'has getter for data_store and back' do
			expect(@stack.data_store).to eq([])
			expect(@stack.back).to eq(0)
		end
	end
	describe 'behavior' do
		before do
			@stack = Stack.new
		end
		it 'has method to push to the end of the array data_store' do
			@stack.push(7)
			@stack.push(8)
			expect(@stack.data_store).to eq([7,8])
			expect(@stack.back).to eq(2)
		end
		it 'has method to pop the last element of the array data_store, will return nil if popping nothing left to pop' do
			@stack.push(7)
			@stack.push(8)
			@stack.pop
			expect(@stack.data_store).to eq([7])
			@stack.pop
			expect(@stack.pop).to eq(nil)
		end
	end
end
