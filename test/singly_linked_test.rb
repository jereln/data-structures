require 'minitest/autorun'
require 'singly-linked'

describe 'singly linked list' do
  it 'creates a new list' do
    SinglyLinkedList.new('first').must_be_instance_of SinglyLinkedList
  end

  it 'has a head' do
    list = SinglyLinkedList.new('first')
    list.head.must_equal Node.new('first')
  end

  it 'inserts a new node at the head' do
    list = SinglyLinkedList.new('first')
    list.insert('second')
    list.head.next_node.val.must_equal 'first'
    list.head.val.must_equal 'second'
  end

  it 'returns the size of the list' do
    list = SinglyLinkedList.new('first')
    list.insert('second')
    list.insert('third')
    list.size.must_equal 3
  end

  it 'searches for a value within the list' do
    list = SinglyLinkedList.new('first')
    list.insert('second')
    list.insert('third')
    list.search('second').must_equal list.head.next_node
  end

  it 'removes a node from the list' do
    list = SinglyLinkedList.new('first')
    list.insert('second')
    list.insert('third')
    list.remove('second')
    list.size.must_equal 2
  end

  it 'returns a string of all the node values in the list' do
    list = SinglyLinkedList.new('first')
    list.insert('second')
    list.insert('third')
    list.to_s.must_equal 'third, second, first'
  end
end
