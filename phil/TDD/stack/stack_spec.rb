require_relative 'stack'
RSpec.describe Stack do

    describe 'attributes' do
        before do
            @stack = Stack.new
        end
        it 'should have a data attribute, which should be an array of values' do
            expect(@stack.data).to eq([])
        end

        it 'should have a back attribute, which defaults to 0 and cannot be set' do
            expect(@stack.back).to eq(0)
            @stack.push(5).push(10)
            expect(@stack.back).to eq(10)
            expect{@stack.back = 100}.to raise_error(NoMethodError)
        end
    end

    describe 'behavior' do
        before do
            @stack = Stack.new
            @stack.push(5).push(10)
        end

        it 'should have a push method which adds a new value to end of stack' do
            expect(@stack.data).to eq([5,10])
        end

        it 'should have a pop method which removes and returns last value of stack or returns nil if stack is empty' do
            expect(@stack.pop).to eq(10)
            expect(@stack).to have_attributes(:data => [5], :back => 5)
            expect(@stack.pop).to eq(5)
            expect(@stack).to have_attributes(:data => [], :back => 0)
            expect(@stack.pop).to eq(nil)
        end
    end
end
