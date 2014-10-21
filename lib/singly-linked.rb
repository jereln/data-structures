class SinglyLinkedList
  attr_accessor :head, :counter

  def initialize(val)
    @head = Node.new(val, nil)
    @counter = 1
  end

  def insert(val) # inserts at the head
    current = Node.new(val)
    current.nexxt = @head
    @head = current
    @counter += 1
  end

  def remove(val)
    current = @head
    if @head.val == val
      @head = @head.nexxt
    else
      until current.nexxt.val == val
        current = current.nexxt
      end
      current.nexxt = current.nexxt.nexxt
    end
    @counter -= 1
  end

  def size
    @counter
  end

  def search(val)
    return @head if @head.val == val
    current = @head
    until current.val == val || current.val.nil?
      current = current.nexxt
    end
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
      if current.nexxt.nil?
        full_list += "#{current.val}"
      else
        full_list += "#{current.val}, "
      end
      current = current.nexxt
    end
    full_list
  end
end

Node = Struct.new(:val, :nexxt)
