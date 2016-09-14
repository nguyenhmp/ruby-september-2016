require_relative 'appletree'
RSpec.describe AppleTree do
	it 'has a height and age' do
		newtree=AppleTree.new
		expect(newtree.height).to eq(5)
		expect(newtree.age).to eq(0)
	end  
	it 'has a count for how many apples are on a given tree' do
		newtree=AppleTree.new
		expect(newtree.apples).to eq(0)
	end  
	it 'has a method year_gone_by which ages the tree and affects its height' do
		newtree=AppleTree.new
		newtree.year_gone_by
		expect(newtree.age).to eq(1)
		expect(newtree.height).to eq(6)
	end  
	it 'has a method year_gone_by which ages the tree and affects its height' do
		newtree=AppleTree.new
		newtree.year_gone_by
		expect(newtree.age).to eq(1)
		expect(newtree.height).to eq(6)
	end
	it 'has a method year_gone_by which will only add apples if the tree is older than 3' do
		newtree=AppleTree.new
		newtree.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		expect(newtree.age).to eq(4)
		expect(newtree.apples).to eq(1)
	end
	it 'has a method pick_apples which removes all of the apples from the tree' do
		newtree=AppleTree.new
		newtree.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		newtree.pick_apples
		expect(newtree.apples).to eq(0)
	end
	it 'has a method year_gone_by which will decay the tree and not allow apples to grow after ten years' do
		newtree=AppleTree.new
		11.times{newtree.year_gone_by}
		expect(newtree.apples).to eq(0)
	end
end

