require 'minitest/autorun'
require 'minitest/benchmark'
require 'quick'
require 'benchmark'

describe 'Merge tests' do
  before do
    @random = [9, 4, 7, 2, 8, 3, 1, 6, 5]
    @best   = (1..1000).to_a
    @worst  = @best.reverse
    @rand   = (1..1000).to_a.shuffle
  end

  it 'sorts an array' do
    array = @random.quick
    assert_equal((1..9).to_a, array)
  end

  def test_benchmark
    puts 'Best Case quick'
    puts Benchmark.measure { @best.quick }
    puts 'Worst Case quick'
    puts Benchmark.measure { @worst.quick }
    puts 'Random quick'
    puts Benchmark.measure { @random.quick }
  end
end
