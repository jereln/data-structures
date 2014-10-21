require 'minitest/autorun'
require 'minitest/benchmark'
require 'radix'
require 'benchmark'

describe 'Merge tests' do
  before do
    @random = [9, 4, 7, 2, 8, 3, 1, 6, 5]
    @best   = (1..1000).to_a
    @worst  = @best.reverse
    @rand   = (1..1000).to_a.shuffle
  end

  it 'sorts an array' do
    array = @random.radix
    assert_equal((1..9).to_a, array)
  end

  def test_benchmark
    puts 'Best Case radix'
    puts Benchmark.measure { @best.radix }
    puts 'Worst Case radix'
    puts Benchmark.measure { @worst.radix }
    puts 'Random radix'
    puts Benchmark.measure { @rand.radix }
  end
end
