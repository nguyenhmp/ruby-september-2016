#empty? method
d = {}
puts d.empty?
#has_key? method
a = Hash["first", 200, "second", 300]
puts a.has_key?("third")
#has_value? method
puts a.has_value?(300)
#delete method
a.delete("first")
puts a