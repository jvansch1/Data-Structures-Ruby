# Simple node class which will hold a value, left_child, and right_child

class Node

  attr_accessor :value, :left_child, :right_child

  def initialize(value, left_child = nil, right_child = nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end

  def examine_node
    puts "value: #{value}"
    puts "left-child: #{left_child}"
    puts "right_child: #{right_child}"
  end
end
