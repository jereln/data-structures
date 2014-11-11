class DoublyLinkedList
  attr_accessor :head, :size

  def initialize
    @size = 0
    @head = nil
  end

  def add(val)
    current = DNode.new(val)
    current.next_node = @head unless @size == 0
    @head.previous_node = current unless @size == 0
    @head = current
    @size += 1
  end

  def remove(val)
    current = @head
    while current
      current = current.next_node until current.val == val
      current.previous_node.next_node = current.next_node
      current.next_node.previous_node = current.previous_node
      @size -= 1
      break
    end
  end

  def dedup_aux
    current = @head
    unique = []
    while current
      unique << current.val unless unique.include? current.val
      current = current.next_node
    end
    unique
  end

  def dedup_no_aux
    current = @head
    while current
      pointer = current.next_node
      while pointer
        remove(pointer) if current.val == pointer.val
        pointer = pointer.next_node
      end
      current = current.next_node
    end
  end
end

DNode = Struct.new(:val, :next_node, :previous_node)
