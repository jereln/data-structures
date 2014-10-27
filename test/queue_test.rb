require 'minitest/autorun'
require 'queue'

describe 'queue' do
  it 'can add an item to the queue' do
    test = Queue.new
    test.enqueue(1)
    test.size.must_equal(1)
  end

  it 'removes and item from the end of the list' do
    test = Queue.new
    test.enqueue(1)
    test.enqueue(2)
    test.enqueue(3)
    test.dequeue
    test.size.must_equal(2)
  end

  it 'knows the size of the list' do
    test = Queue.new
    test.enqueue(1)
    test.enqueue(2)
    test.enqueue(3)
    test.size.must_equal(3)
  end
end
