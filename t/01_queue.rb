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

    def test_push_pop
        pq = Queue::Priority.new()
        pq.push('hello', 1)
        x = pq.pop()
        assert_equal('hello', x, 'get back what we pushed')
    end

    def test_sorted
        pq = Queue::Priority.new()
        pq.push('hello', 1)
        assert_equal(false, pq.sorted?)
    end

    def test_highest_priority
        pq = Queue::Priority.new()
        pq.push('hello', 1)
        pq.push('goodbye', 3)
        pq.push('lunchtime', 2)
        assert_equal(false, pq.sorted?)
        x = pq.pop()
        assert_equal('goodbye', x, 'p3 is the highest')
        assert_equal(true, pq.sorted?, 'pop sorts the queue')
    end
end
