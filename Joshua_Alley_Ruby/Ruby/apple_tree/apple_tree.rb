class AppleTree
  attr_accessor :age, :apple_count, :height
  def initialize
    @age = 1
    @height = 1
    @apple_count = 0
  end
  def year_gone_by
    @age+=1
    @height+=5
    if @age > 3 && @age < 10
      @apple_count += 5
    end
  end
  def pick_apples
    @apple_count = 0
  end
end

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
puts tree.apple_count
tree.year_gone_by
puts tree.apple_count
