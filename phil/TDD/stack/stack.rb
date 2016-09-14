class Stack
    attr_reader :data, :back
    def initialize
        @data = []
        @back = 0
        self
    end
    def push(val)
        @data[@data.length] = val
        @back = val
        self
    end
    def pop
        return nil if @data.empty?
        temp = @back
        @data.delete_at @data.length-1
        @back = (@data.empty? ? 0 : @data[@data.length-1])
        temp
    end
end
