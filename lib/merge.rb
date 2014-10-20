class Sort
  def self.merge_sort(array)
    return array if array.length == 1

    merge(
      merge_sort(array.shift(array.length / 2)),
      merge_sort(array)
      )
  end

  def self.merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      left.first < right.first ? sorted << left.shift : sorted << right.shift
    end
    sorted + left + right
  end
end
