require 'minitest/autorun'
require 'minitest/benchmark'
require 'merge'
require 'benchmark'

describe 'Merge tests' do
  before do
    @random = [9, 4, 7, 2, 8, 3, 1, 6, 5]
    @best   = (1..1000).to_a
    @worst  = @best.reverse
    @rand   = (1..1000).to_a.shuffle
  end

  it 'sorts an array' do
    array = Sort.merge_sort(@random)
    assert_equal((1..9).to_a, array)
  end

  def test_benchmark
    puts 'Best Case merge'
    puts Benchmark.measure { Sort.merge_sort(@best) }
    puts 'Worst Case merge'
    puts Benchmark.measure { Sort.merge_sort(@worst) }
    puts 'Random merge'
    puts Benchmark.measure { Sort.merge_sort(@rand) }
  end
end
