require_relative 'node'

# A binary tree is a tree where each node has up to two children
# This is different from a binary search tree
# where all left nodes are lower than right nodes\

#This is an example of a binary tree

## Search is in O(n) time because each node must be searched

class Tree
  def initialize(root)
    @root = root
  end

  def in_order(node)
    if node == nil
      return true
    else
      puts node.get_value
      in_order(node.get_left_child)
      in_order(node.get_right_child)
    end
  end
end

root = Node.new(1)
left_child = Node.new(2)
right_child = Node.new(3)

root.set_left_child(left_child)
root.set_right_child(right_child)

tree = Tree.new(root)

tree.in_order(root)
