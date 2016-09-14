a = [ 1, 2, [3, [4, 5] ] ]
puts a.flatten!(1).to_s
puts a.flatten!(2).to_s
