class Queue
  attr_accessor :queue

  def initialize
    @queue = queue
    @queue = []
  end

  def enqueue(val)
    @queue << val
  end

  def dequeue
    @queue.shift
  end

  def size
    @queue.size
  end
end
