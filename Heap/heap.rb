require 'byebug'

# Max Heap. Maximum element should be the root and each child should be less than the parent


class Max_Heap

  attr_accessor :heap_store

  # initialize heap with empty array which stores values
  def initialize
    @heap_store = []
  end

  # Add value to the array and call trickle up method
  # pass in last element of the array is the child index
  def add(value)
    @heap_store.push(value)
    trickle_up(value, @heap_store.length - 1)
  end

  def trickle_up(value, child_index)
    # if child_index is it means we are at the root of the heap
    if child_index == 0
      return nil
    end

    # calculate parent_index based off of child index
    # (child_index - 1) / 2
    parent_index = (child_index - 1) / 2
    parent_value = @heap_store[parent_index]

    # if the parent value is greater than the child value, swap the elements
    # in the array and recursively call trickle_up with the parent_index as the new child index
    if (parent_value < value)
      @heap_store[child_index], @heap_store[parent_index] = @heap_store[parent_index], @heap_store[child_index]
      trickle_up(value, parent_index)
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
