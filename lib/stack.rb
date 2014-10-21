class Stack
  attr_accessor :head, :counter

  def initialize
    @counter = 0
  end

  def push(val)
    current = Node.new(val, @head)
    @head = current
    @counter += 1
  end

  def pop
    @head = @head.next_node
    @counter -= 1
  end

  def size
    @counter
  end
end

Node = Struct.new(:val, :next_node)
