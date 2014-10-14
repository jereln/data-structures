require 'minitest/autorun'
require 'minitest/benchmark'
require 'insertion'
require 'benchmark'

describe 'Insertion tests' do
  before do
    @random = [9, 4, 7, 2, 8, 3, 1, 6, 5]
    @best   = (1..1000).to_a
    @worst  = @best.reverse
    @rand   = (1..1000).to_a.shuffle
  end

  it 'sorts an array' do
    array = Sort.insertion(@random)
    assert_equal (1..9).to_a, array
  end

  def test_benchmark
    puts 'Best Case'
    puts Benchmark.measure { Sort.insertion(@best) }
    puts 'Worst Case'
    puts Benchmark.measure { Sort.insertion(@worst) }
    puts 'Random'
    puts Benchmark.measure { Sort.insertion(@rand) }
  end
end