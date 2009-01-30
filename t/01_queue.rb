require 'test/unit'
require 'priority_queue'

class Test_PQueue < Test::Unit::TestCase
    def test_init
        pq = Queue::Priority.new()
        assert(pq, 'create a Priority Queue')
    end
end
