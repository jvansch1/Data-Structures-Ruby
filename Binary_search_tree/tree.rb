# A BST is a type of binary tree in which all nodes to the left
# of a particular node are less than the parent and all nodes
# on the right are greater than the parent

# Time Complexity
# => Search: O(log n)
# => Insertion: O(log n)
# => Deletion: O(log n)

require_relative 'node'
require 'byebug'

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
  # print root, then left, then right
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

  # post_order_traversal
  # Print left, right, root
  def post_order_traversal(root)
    if root == nil
      return nil
    end
    in_order_traversal(root.left_child)
    in_order_traversal(root.right_child)
    puts root.value
  end

  def find_dfs(root, value)
    # if root is nil return nil
    if root == nil
      return nil
    end

    # if root.value == value then return the root
    if root.value == value
      return root
    end

    [root.left_child, root.right_child].each do |child|
      # store result in result variable
      # result will be either node object or nil
      result = find_dfs(child, value)
      # return if the result is a node object
      return result unless result.nil?
    end

    nil
  end

  def find_bfs(root, value)
    # Use a queue to store children as they are checked
    queue = [root]

    # while the queue is not empty(all children have been checked)
    while queue.length > 0
      # Remove the first element from the queue
      current_node = queue.shift

      #if the value of the current_node is equal to the value you are looking for
      # return that value
      if current_node.value == value
        return current_node
      end
      # push the children of the current_node into the queue
      queue.push(current_node.left_child) unless current_node.left_child == nil
      queue.push(current_node.right_child) unless current_node.right_child == nil
    end
    # if the value is not found return nil
    nil
  end
end

root = Node.new(5)
tree = Binary_Search_Tree.new()
tree.add_node(root, 2)
tree.add_node(root, 10)
tree.add_node(root, 30)


# print tree.find_dfs(root, 5).examine_node
# print tree.find_bfs(root, 30).examine_node
