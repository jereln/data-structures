class Sort
  def self.insertion(array)
    (1...array.length).each do |num|
      while num > 0 && (array[num-1] > array[num]) do
        array[num], array[num - 1] = array[num -1], array[num]
        num -= 1
      end
    end
    array
  end
end