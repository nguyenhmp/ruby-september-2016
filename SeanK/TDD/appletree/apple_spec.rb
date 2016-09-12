require_relative 'apple'
RSpec.describe AppleTree do
	describe 'initialization' do
		before do 
			@appletree = AppleTree.new
		end

		it 'initializes apples, age, and height to 0' do
			expect(@appletree.height).to eq(0)
			expect(@appletree.age).to eq(0)
			expect(@appletree.apples).to eq(0)
		end
	end
	describe 'attributes' do
		before do 
			@appletree = AppleTree.new
		end
		it 'has getter for apples, age, and height attribute' do 
			expect(@appletree.height).to eq(0)
			expect(@appletree.age).to eq(0)
			expect(@appletree.apples).to eq(0)
		end
	end
	describe 'behavior' do
		before do
			@appletree = AppleTree.new
		end
		it 'has method to increase height by 3 and age by one, will stop increasing height at 10, will grow 10 apples per year starting at 3 until 10' do 
			@appletree.year_gone_by
			expect(@appletree.age).to eq(1)
			expect(@appletree.height).to eq(3)
			expect(@appletree.apples).to eq(0)

			3.times {@appletree.year_gone_by}
			expect(@appletree.height).to eq(12)
			expect(@appletree.apples).to eq(10)
			expect(@appletree.age).to eq(4)

			7.times {@appletree.year_gone_by}
			expect(@appletree.apples).to eq(70)
			expect(@appletree.age).to eq(11)
			expect(@appletree.height).to eq(30)
		end
		it 'has method to bring apples down to zero' do 
			5.times {@appletree.year_gone_by}
			expect(@appletree.apples).to eq(20)
			@appletree.pickapples
			expect(@appletree.apples).to eq(0)
		end
	end
end 