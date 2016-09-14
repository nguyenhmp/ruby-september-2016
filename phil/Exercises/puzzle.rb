def first(arr)
    print arr.reduce(:+)
    return arr.find_all { |val| val>10 }
end
# first [3,5,1,2,7,9,8,13,25,32]

def second(arr)
    puts arr.shuffle!
    return arr.find_all { |name| name.length>5 }
end
# second %w[John KB Oliver Cory Matthew Christopher]

def third(arr)
    puts arr.shuffle!.last, arr.first
    puts "First letter is a vowel!" if ['a','e','i','o','u'].any? { |c| c==arr.first }
end
# third ('a'..'z').to_a

def fourth
    arr = []
    10.times { arr.push rand(46)+55 }
    return arr
end

# fourth
def fifth
    rand = fourth.sort
    puts "min value: #{rand.first}", rand[1..8], "max value: #{rand.last}"
end
# fifth

def sixth
    str = ""
    5.times { str << rand(26)+97 }
    return str
end
# sixth

def seventh
    arr = []
    10.times { arr.push sixth }
    return arr
end
# seventh
