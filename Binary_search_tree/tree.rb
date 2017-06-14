# A BST is a type of binary tree in which all nodes to the left
# of a particular node are less than the parent and all nodes
# on the right are greater than the parent

require_relative 'node'

class Binary_Search_Tree
  def initialize
    @root = nil
  end

  def add_node(root, value)
    # Create a new node Object with the passed in value
    new_node = Node.new(value)

    # if value is less than value of current_node
    if value < root.value
      # if left child is node the node should go here
      if root.left_child == nil
        root.left_child = new_node
      # if there is a node there recursively call add_node with that child
      else
        add_node(root.left_child, value)
      end
    else
      # same methodology as left
      if (root.right_child == nil)
        root.right_child = new_node
      else
        add_node(root.right_child, value)
      end
    end
    return nil
  end

  # Pre-order traversal
  # print current_node, then left, then right
  def preorder_traversal(root)
    if root == nil
      return nil;
    end
    puts root.value
    in_order_traversal(root.left_child)
    in_order_traversal(root.right_child)
  end

  # In order traversal
  # Print left, root, current_node
  def in_order_traversal(root)
    if root == nil
      return nil
    end
    in_order_traversal(root.left_child)
    puts root.value
    in_order_traversal(root.right_child)
  end

  def post_order_traversal(root)
    if root == nil
      return nil
    end
    in_order_traversal(root.left_child)
    in_order_traversal(root.right_child)
    puts root.value
  end
end

root = Node.new(5)
tree = Binary_Search_Tree.new()
tree.add_node(root, 2)
tree.add_node(root, 10)
# tree.preorder_traversal(root)
# tree.in_order_traversal(root)
tree.post_order_traversal(root)
