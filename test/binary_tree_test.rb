require 'minitest/autorun'
require 'binary-tree'

describe 'binary tree' do
  before do
    @tim = BinaryTreeNode.new('tim')
    @jony = BinaryTreeNode.new('jony')
    @phil = BinaryTreeNode.new('phil')
    @craig = BinaryTreeNode.new('craig')
    @eddie = BinaryTreeNode.new('eddie')
    @dan = BinaryTreeNode.new('dan')
    @katie = BinaryTreeNode.new('katie')
    @peter = BinaryTreeNode.new('peter')
    @andrea = BinaryTreeNode.new('andrea')

    @tim.left = @jony
    @tim.right = @phil
    @phil.left = @craig
    @phil.right = @eddie
    @jony.left = @dan
    @jony.right = @katie
    @katie.left = @peter
    @katie.right = @andrea
  end

  it 'returns the tree using pre-order traversal' do
    assert_equal(%w(tim jony dan katie peter andrea phil craig eddie),
                 BinaryTreeNode.pre_order(@tim))
  end

  it 'returns the tree using in-order traversal' do
    assert_equal(%w(dan jony peter katie andrea tim craig phil eddie),
                 BinaryTreeNode.in_order(@tim))
  end

  it 'returns the tree using post-order traversal' do
    assert_equal(%w(dan peter andrea katie jony craig eddie phil tim),
                 BinaryTreeNode.post_order(@tim))
  end
end
