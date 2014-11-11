require 'minitest/autorun'
require 'deduplicate'
require 'pry'

describe 'deduplicate a list' do

  it 'should create a new list' do
    list = DoublyLinkedList.new
    list.must_be_instance_of DoublyLinkedList
    list.size.must_equal 0
  end

  it 'should add a node to the list' do
    list = DoublyLinkedList.new
    list.add('first')
    list.add('second')
    list.add('third')
    list.add('fourth')
  end

  it 'should delete a node from the list' do
    list = DoublyLinkedList.new
    list.add('first')
    list.add('second')
    list.add('third')
    list.add('fourth')
    list.size.must_equal 4
    list.remove('second')
    list.size.must_equal 3
  end

  it 'deduplicates a list' do
    list = DoublyLinkedList.new
    list.add('a')
    list.add('b')
    list.add('c')
    list.add('c')
    list.add('d')
    list.add('d')
    dedup = list.dedup_aux
    dedup.size.must_equal 4
  end
end
