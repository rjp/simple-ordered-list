module Queue
class Priority
    class Item
        attr_accessor :object, :priority
        def initialize(object, priority)
            @object = object
            @priority = priority
        end
    end

    attr_accessor :queue, :sorted

    def initialize
        @queue = []
        @sorted = true
    end

    def push(object, priority)
        i = Queue::Priority::Item.new(object, priority)
        @me.push i
        @sorted = false
    end

    def pop()
        if @sorted == false then
            tmp = @queue.sort_by {|i| i[1]}
            @queue = tmp
            @sorted = true
        end

        return @queue.pop
    end
end
end
