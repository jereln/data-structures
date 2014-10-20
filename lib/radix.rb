class Sort
  def self.radix(array)
    rounds = array.max.to_s.length
    rounds.times do | round |
      buckets = []
      10.times  { buckets << [] }
      array.each do | n |
        bucket_number = (n / 10**round) % 10
        buckets[bucket_number] << n
      end
      array = buckets.flatten
    end
    array
  end
end
