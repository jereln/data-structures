class SinglyLinkedList
  attr_reader :size, :head

  def initialize(val)
    @head = Node.new(val, nil)
    @size = 1
  end

  def insert(val) # inserts at the head
    current = Node.new(val)
    current.next_node = @head
    @head = current
    @size += 1
  end

  def remove(val)
    current = @head
    if @head.val == val
      @head = @head.next_node
    else
      current = current.next_node while current.next_node.val != val
      current.next_node = current.next_node.next_node
    end
    @size -= 1
  end

  def search(val)
    return @head if @head.val == val
    current = @head
    current = current.next_node until current.val == val || current.val.nil?
    current
  end

  def to_s
    current = @head
    put_values_in_string(current)
  end

  private

  def put_values_in_string(current)
    full_list = ''
    until current.nil?
      if current.next_node.nil?
        full_list += "#{current.val}"
      else
        full_list += "#{current.val}, "
      end
      current = current.next_node
    end
    full_list
  end
end

Node = Struct.new(:val, :next_node)
