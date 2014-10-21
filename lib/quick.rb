class Array
  def quick(left = 0, right = size - 1)
    return self if length <= 1
    if left < right
      pivot = rand(left...right)
      pivot_value = self[pivot]
      new_pivot = partion(left, right, pivot, pivot_value)
      quick(left, new_pivot - 1)
      quick(new_pivot + 1, right)
    end
    self
  end

  def partion(left, right, pivot, pivot_value)
    self[right], self[pivot] = self[pivot], self[right]
    new_index = left
    (left...right).each do |n|
      if self[n] < pivot_value
        self[n], self[new_index] = self[new_index], self[n]
        new_index += 1
      end
    end
    self[right], self[new_index] = self[new_index], self[right]
    new_index
  end
end
