Simple Ordered List
===================

A trivial ordered list to act as a priority queue for rss2muc

    require 'rubygems'
    require 'simple-ordered-list'
      
    pq = Queue::Priority.new()
    
    # push some objects onto our queue
    pq.push(object, priority)
    
    # get the highest priority object
    next = pq.highest()
    
    # or get the lowest
    next = pq.lowest()


