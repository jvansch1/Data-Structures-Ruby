# As opposed to a binary tree, a Poly Tree(n-ary tree) node can have any number of children

require_relative 'node'

class Poly_Tree

  def initialize(root = nil)
    @root = root
  end

  def find_bfs(value)
    queue = [@root]

    while queue.length > 0
      current_node = queue.shift

      if current_node.value == value
        return current_node
      end

      current_node.children.each do |child|
        queue.push(child)
      end
    end
    nil
  end

  def find_dfs(root, value)
    if root == nil
      return nil
    end

    if root.value == value
      return root
    end

    root.children.each do |child|
      result = find_dfs(child, value)
      return result unless result.nil?
    end
    nil
  end

end

# root = Node.new(1)
# root.add_child(2)
# root.add_child(3)
# root.add_child(4)
#
# tree = Poly_Tree.new(root)
#
# print tree.find_dfs(root, 2)
