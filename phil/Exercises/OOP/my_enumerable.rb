module MyEnumerable
    def my_each
        for i in 0...self.length
            yield self[i] if block_given?
        end
    end
end

class Array
    include MyEnumerable
end

['a','b','c','d','e',].my_each { |val| puts val << '!' }
