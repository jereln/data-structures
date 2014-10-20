class Sort
  def self.quick(left = 0, right = -1)
    return self if length <= 1
    if left < right
      pivot = rand(left...right)
      new_pivot = partition(left, right, pivot)
      quick(left, new_pivot - 1)
      quick(new_pivot + 1, right)
    end
    self
  end

  def sort(left, right, pivot)
    pivot_value = self[pivot]
    self[right], self[pivot] = self[pivot], self[right]
    new_pivot = left
    (left...right).each do |i|
      if self[i] <= pivot_value
        self[i], self[new_pivot] = self[new_pivot], self[i]
        new_pivot += 1
      end
    end
    self[new_pivot], self[right] = self[right], self[new_pivot]
    new_pivot
  end
end
