require 'byebug'

class Max_Heap

  attr_accessor :heap_store

  def initialize
    @heap_store = []
  end

  def add(value)
    @heap_store.push(value)
    trickle_up(value, nil, @heap_store.length - 1)
  end

  def trickle_up(value, parent_index = nil, child_index)
    # debugger
    parent_index ||= (child_index - 1) / 2
    parent_value = @heap_store[parent_index]

    if child_index == 0
      return nil
    end

    if (parent_value < value)
      @heap_store[child_index], @heap_store[parent_index] = @heap_store[parent_index], @heap_store[child_index]
      trickle_up(value, nil, parent_index)
    end
    nil
  end
end

heap = Max_Heap.new()
heap.add(100)
heap.add(75)
heap.add(80)
heap.add(50)
heap.add(110)
heap.add(1000)
heap.add(20)
print heap.heap_store
