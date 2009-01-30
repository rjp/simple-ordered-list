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

    def test_priority_order
        pq = Queue::Priority.new()
        pq.push('hello', 1)
        pq.push('goodbye', 3)
        pq.push('lunchtime', 2)
        assert_equal(false, pq.sorted?)
        x = pq.pop()
        assert_equal('goodbye', x, 'p3 is the highest')
        assert_equal(true, pq.sorted?, 'pop sorts the queue')
        x = pq.pop()
        assert_equal('lunchtime', x, 'p2 is second')
        x = pq.pop()
        assert_equal('hello', x, 'p1 is last')
        assert_equal(true, pq.sorted?, 'pop sorts the queue')
    end

    def test_priority_reverse_order
        pq = Queue::Priority.new()
        pq.push('hello', 1)
        pq.push('goodbye', 3)
        pq.push('lunchtime', 2)
        assert_equal(false, pq.sorted?)
        x = pq.shift()
        assert_equal('hello', x, 'p1 is first')
        assert_equal(true, pq.sorted?, 'shift sorts the queue')
        x = pq.shift()
        assert_equal('lunchtime', x, 'p2 is second')
        x = pq.shift()
        assert_equal('goodbye', x, 'p3 is last')
        assert_equal(true, pq.sorted?, 'shift sorts the queue')
    end

    def test_array
        pq = Queue::Priority.new()
        pq.push(['redmire','pool'], 1)
        pq.push(['stour','river'], 8)
        pq.push(['thames','river'], 2)
        x = pq.shift()
        assert_equal(['redmire','pool'], x, 'redmire pool')
        x = pq.pop()
        assert_equal(['stour','river'], x, 'river stour')
        x = pq.pop()
        assert_equal(['thames','river'], x, 'river thames')
    end
end
