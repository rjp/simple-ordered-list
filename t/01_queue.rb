require 'test/unit'
require 'priority_queue'

class Test_PQueue < Test::Unit::TestCase
    attr_accessor :tq

    def setup
        @tq = Queue::Priority.new()
        @tq.push('hello', 1)
        @tq.push('goodbye', 3)
        @tq.push('lunchtime', 2)
    end

    def teardown
        @tq = nil
    end

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
        assert_equal(false, @tq.sorted?)
    end

    def test_priority_order
        assert_equal(false, @tq.sorted?)
        x = @tq.pop()
        assert_equal('goodbye', x, 'p3 is the highest')
        assert_equal(true, @tq.sorted?, 'pop sorts the queue')
        x = @tq.pop()
        assert_equal('lunchtime', x, 'p2 is second')
        x = @tq.pop()
        assert_equal('hello', x, 'p1 is last')
        assert_equal(true, @tq.sorted?, 'pop sorts the queue')
    end

    def test_priority_reverse_order
        assert_equal(false, @tq.sorted?)
        x = @tq.shift()
        assert_equal('hello', x, 'p1 is first')
        assert_equal(true, @tq.sorted?, 'shift sorts the queue')
        x = @tq.shift()
        assert_equal('lunchtime', x, 'p2 is second')
        x = @tq.shift()
        assert_equal('goodbye', x, 'p3 is last')
        assert_equal(true, @tq.sorted?, 'shift sorts the queue')
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
