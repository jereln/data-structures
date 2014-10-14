class Sort
  def self.insertion(array)
    (1...array.length).each do |num|
      value = num
      while value > 0 && (array[value-1] > array[value]) do
        array[value], array[value - 1] = array[value -1], array[value]
        value -= 1
      end
    end
    array
  end
end