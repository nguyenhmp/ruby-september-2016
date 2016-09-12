require_relative 'apple_tree'

RSpec.describe AppleTree do
  it 'the AppleTree class should instantiate with height and age' do
    tree = AppleTree.new
    expect(tree.age).to eq(1)
    expect(tree.height).to eq(1)
  end
  it 'the AppleTree class should have a count of apples' do
    tree = AppleTree.new
    expect(tree.apple_count).to eq(0)
  end
    it 'the AppleTree class should have a year_gone_by method that ages the tree and affects the height' do
    tree = AppleTree.new
    tree.year_gone_by
    expect(tree.age).to eq(2)
    expect(tree.height).to eq(6)
  end
  it 'the AppleTree class should not be able to grow apples for its first 3 years' do
    tree = AppleTree.new
    tree.year_gone_by
    tree.year_gone_by
    expect(tree.apple_count).to eq(0)
    tree.year_gone_by
    tree.year_gone_by
    expect(tree.apple_count).to eq(10)
  end
  it 'the AppleTree class should not be able to grow apples after it ages 10 years' do
    tree = AppleTree.new
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    tree.year_gone_by
    expect(tree.apple_count).to eq(30)
    tree.year_gone_by
    expect(tree.apple_count).to eq(30)
  end
end
