class BinaryTreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
    @@tree = []
  end

  def self.pre_order(node)
    @@tree << node.val
    pre_order(node.left) if node.left
    pre_order(node.right) if node.right
    @@tree
  end

  def self.in_order(node)
    in_order(node.left) if node.left
    @@tree << node.val
    in_order(node.right) if node.right
    @@tree
  end

  def self.post_order(node)
    post_order(node.left) if node.left
    post_order(node.right) if node.right
    @@tree << node.val
    @@tree
  end
end
