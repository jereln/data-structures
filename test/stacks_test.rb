require 'minitest/autorun'
require 'stack'

describe 'stacks on stacks on stacks' do
  it 'creates a new stack' do
    Stack.new.must_be_instance_of Stack
  end

  it 'adds a node to a stack' do
    test_stack = Stack.new
    test_stack.push(1)
    test_stack.size.must_equal 1
  end

  it 'removes a node from a stack' do
    test_stack = Stack.new
    test_stack.push(1)
    test_stack.push(2)
    test_stack.push(3)
    test_stack.pop
    test_stack.size.must_equal 2
    test_stack.head.val.must_equal 2
  end

end
