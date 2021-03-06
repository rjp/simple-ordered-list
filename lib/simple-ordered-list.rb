class Queue
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
        @queue.push i
        @sorted = false
    end

    def highest()
        if @sorted == false then
            tmp = @queue.sort_by {|i| i.priority}
            @queue = tmp
            @sorted = true
        end

        return @queue.pop.object
    end

    def lowest(withpri=false)
        if @sorted == false then
            tmp = @queue.sort_by {|i| i.priority}
            @queue = tmp
            @sorted = true
        end

        x = @queue.shift
        if withpri then
            return x.object, x.priority
        end
        return x.object
    end

    def sorted?()
        return @sorted
    end
end
end
