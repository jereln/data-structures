class HashTable
  attr_accessor :hash_table

  def initialize(size)
    @hash_table = Array.new(size) { [] }
  end

  def get(key)
    index = hash(key)
    val = ''
    hash_table[index].each do |pair|
      val = pair[1] if pair[0] == key
    end
    val
  end

  def set(key, val)
    fail TypeError, 'Must be a string' unless key.is_a? String
    pair = [key, val]
    index = hash(key)
    @hash_table[index] << pair
  end

  def hash(key)
    key.sum % @hash_table.size
  end
end
