# Singly Linked List. Will only have a pointer to the next node and not the previous

class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  
end
