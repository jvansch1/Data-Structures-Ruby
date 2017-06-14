require 'byebug'

# Max Heap. Maximum element should be the root and each child should be less than the parent

# Peek(view maximum element): O(1)
# Insert: O(log n)
# => based of depth of tree which is logn of number of elements

class Max_Heap

  attr_accessor :heap_store

  # initialize heap with empty array which stores values
  def initialize
    @heap_store = []
  end

  def peek
    return @heap_store[0]
  end

  # Add value to the array and call trickle up method
  # pass in last element of the array as the child index
  def add(value)
    @heap_store.push(value)
    trickle_up(value, @heap_store.length - 1)
  end

  def trickle_up(value, child_index)
    # if child_index is it means we are at the root of the heap
    return nil if child_index == 0

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

  # remove max_element
  # =>  swap root and last element
  # =>  heapify down(trickle_down)
  def pop
    @heap_store[0], @heap_store[@heap_store.length - 1] = @heap_store[@heap_store.length - 1], @heap_store[0]
    @heap_store.pop()
    trickle_down(0)
  end

  def trickle_down(index)
    parent_value = @heap_store[index]

    # calculate the two child indices
    # there is a possibility that they could be out of bounds of the heap_store
    # only push into the child array if the children are not nil
    left_child_index = (2 * index) + 1
    right_child_index = (2 * index) + 2
    children = []
    children << @heap_store[left_child_index] if @heap_store[left_child_index]
    children << @heap_store[right_child_index] if @heap_store[right_child_index]

    # if all the children are less than the parent, you have reached the appropriate place in the heap
    if children.all? { |child| child < parent_value }
      return
    end

    # if there is only one child swap with that one
    if children.length == 1
      swap_index = left_child_index
    # if both are present, find the greater one and swap with that
    else
      swap_index = children[0] > children[1] ? left_child_index : right_child_index
    end

    @heap_store[index], @heap_store[swap_index] = @heap_store[swap_index], @heap_store[index]
    trickle_down(swap_index)
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
print "\n"
heap.pop()
print heap.heap_store
print "\n"
heap.pop()
print heap.heap_store
print "\n"
