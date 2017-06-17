class Node

  attr_accessor :children, :value

  def initialize(value)
    @value = value
    @children = []
  end

  def add_edge(child)
    @children << child
  end
end
