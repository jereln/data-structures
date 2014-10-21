class Array
  def radix
    copy = self
    rounds = copy.max.to_s.length
    make_the_rounds(copy, rounds)
  end

  private

  def make_the_rounds(copy, rounds)
    rounds.times do | round |
      buckets = []
      10.times  { buckets << [] }
      copy.each do | n |
        bucket_number = (n / 10**round) % 10
        buckets[bucket_number] << n
      end
      copy = buckets.flatten
    end
    copy
  end
end
