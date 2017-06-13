class Node
  def initialize(value = nil, left_child = nil, right_child = nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end

  def add_value(value)
    @value = value
  end

  def get_value
    return @value
  end

  def get_left_child()
    return @left_child
  end

  def get_right_child()
    return @right_child
  end

  def set_left_child(node)
    @left_child = node
  end

  def set_right_child(node)
    @right_child = node
  end
end
