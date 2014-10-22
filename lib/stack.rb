class Stack
  attr_reader :head, :size

  def initialize
    @size = 0
  end

  def push(val)
    current = Node.new(val, @head)
    @head = current
    @size += 1
  end

  def pop
    @head = @head.next_node
    @size -= 1
  end
end

Node = Struct.new(:val, :next_node)
