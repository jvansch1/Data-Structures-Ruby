require_relative 'node'

class Graph

  def initialize
    @nodes = []
    @visited = {}
  end

  def add_node(node)
    @nodes << node
  end

  def add_edge(parent, child)
    parent.add_edge(child)
  end

  def DFS(source, target)
    @visited = {}

    # If we have found the target, return true
    if source == target
      return true
    end

    # If we have alreayd seen the source node, We have gone in a circle
    # and are in danger of entering infinite loop
    if @visited[source]
      return false
    end

    # Stick the current node into the visited hash so it cannot be revisited
    @visited[source] = true

    # go through each of the children and recursively call it as the new source
    source.children.each do |child|
      result = DFS(child, target)

      # return true if the target is found
      return result if result
    end

    # else return false
    return false
  end

end

graph = Graph.new
node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)
node_4 = Node.new(4)
node_5 = Node.new(5)
node_6 = Node.new(6)
graph.add_node(node_1)
graph.add_node(node_2)
graph.add_node(node_3)
graph.add_node(node_4)
graph.add_node(node_5)
graph.add_node(node_6)
graph.add_edge(node_1, node_2)
graph.add_edge(node_1, node_3)
graph.add_edge(node_3, node_4)
graph.add_edge(node_4, node_5)

print graph.DFS(node_2, node_3)
