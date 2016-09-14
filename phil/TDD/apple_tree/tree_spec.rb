require_relative 'tree'
RSpec.describe AppleTree do
    describe 'attributes' do
        before do
            @tree = AppleTree.new
        end

        it 'should have a height and age' do
            expect(@tree).to have_attributes(:height => 50, :age => 0)
        end

        it 'should have a count of how many apples it has' do
            expect(@tree.apple_count).to eq(0)
        end
    end

    describe 'behavior' do
        before do
            @tree = AppleTree.new
        end

        it 'should have a method year_gone_by which ages tree by one year' do
            @tree.year_gone_by
            expect(@tree).to have_attributes(:height => 70, :age => 1)
        end

        it 'should not grow apples for first three years of its life' do
            3.times { @tree.year_gone_by }
            expect(@tree.apple_count).to eq(0)
            @tree.year_gone_by
            expect(@tree.apple_count).to be_between(1, 10)
        end

        it 'should have a method pick_apples that removes and returns all apples' do
            4.times { @tree.year_gone_by }
            expect(@tree.pick_apples).to be_between(1,10)
            expect(@tree.apple_count).to eq(0)
        end

        it 'should stop growing and producing apples after 10 years' do
            10.times { @tree.year_gone_by }
            height = @tree.height
            apples = @tree.apple_count
            @tree.year_gone_by
            expect(@tree.height).to eq(height)
            expect(@tree.apple_count).to eq(apples)
        end
    end
end
