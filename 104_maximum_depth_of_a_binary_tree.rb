# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?
  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)
  left_depth > right_depth ? left_depth + 1 : right_depth + 1
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

tree = TreeNode.new(true)
tree.left = TreeNode.new(true)
tree.right = TreeNode.new(true)
tree.left.left = TreeNode.new(true)
tree.right.left = TreeNode.new(true)
tree.right.right = TreeNode.new(true)
tree.right.right.right = TreeNode.new(true)

#       o
#      / \
#     o   o
#    /   / \
#   o   o   o
#            \
#             o

max_depth(tree) # => 4
