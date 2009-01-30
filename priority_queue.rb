module Queue
class Priority
    class Item
        attr_accessor :me
        def initialize(object, priority)
            @me = [object, priority]
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
end
end
