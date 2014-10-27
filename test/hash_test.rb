require 'minitest/autorun'
require 'hash'

describe 'hashing it up' do
  before do
    @hash = HashTable.new(1024)
  end

  it 'has the set size' do
    @hash.hash_table.size.must_equal(1024)
  end

  it 'only accepts strings as the key' do
    proc { @hash.hash(:not_a_string) }.must_raise NoMethodError
  end

  it 'gets a value using the key' do
    @hash.set('key', 'value')
    @hash.get('key').must_equal('value')
  end

  it 'can handle collisions' do
    @hash.set('12345', 'forward')
    @hash.set('54321', 'backward')
    assert_equal @hash.hash('12345'), @hash.hash('54321')
    assert_equal @hash.get('12345'), 'forward'
    assert_equal @hash.get('54321'), 'backward'
  end

  it 'can hash the dictionary' do
    File.open('/usr/share/dict/words', 'r') do |f|
      lines = f.readlines
      lines.each { |line| @hash.set(line, line.reverse) }
    end
    File.open('/usr/share/dict/words', 'r') do |f|
      lines = f.readlines
      lines.each do |line|
        @hash.get(line).must_equal line.reverse
      end
    end
  end
end
