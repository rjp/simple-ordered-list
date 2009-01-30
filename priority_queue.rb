module Queue
class Priority
    class Item
        attr_accessor :me
        def initialize(object, priority)
            @me = [object, priority]
        end
    end

    def initialize
        @queue = []
    end
end
end
