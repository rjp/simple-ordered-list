require 'test/unit'
require 'priority_queue'

class Test_PQueue < Test::Unit::TestCase
    def test_init
        pq = Queue::Priority.new()
        assert(pq, 'create a Priority Queue')
    end

    def test_push
        pq = Queue::Priority.new()
        pq.push('hello', 1)
    end
end
