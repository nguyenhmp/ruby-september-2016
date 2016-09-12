["ant", "bear", "cat"].any? {|word| word.length >= 3}


["ant", "bear", "cat"].each {|word| print word, "--"}

(1..4).collect {|i| i*i}
(1..4).collect { "cat" }

(1..10).detect { |i| i %5 == 0 and i % 7 == 0 }

(1..10).find_all { |i| i % 3 == 0 }

(1..10).reject { |i| i % 3 == 0 }

5.upto(10) { |i| print i, " " }