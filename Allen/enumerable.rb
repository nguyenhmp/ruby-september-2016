module MyEnumerable
  def my_each
    yield '1'
    yield '2'
    yield '3'
    yield '4'
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal
