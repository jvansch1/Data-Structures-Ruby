# same as binary tree expect an array of children is used rather than a left and right child

class Node

  attr_accessor :value, :children

  def initialize(value, children = [])
    @value = value
    @children = children
  end

  def add_child(value)
      @children.push(Node.new(value))
  end
end
