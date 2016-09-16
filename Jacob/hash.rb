hash2 = {:one => 1, :two => 2, :three => 3}

hash2.delete(:one)

puts hash2

puts hash2.empty?

puts hash2.has_key?(:three)

puts hash2.has_value?(2)