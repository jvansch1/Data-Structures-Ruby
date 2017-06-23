# Recursive sorting algorithm
# => O(n * logn) time complexity

def quick_sort(array)
  # Base Case
  # => if there is only one element in the array, return array
  if array.length <= 1
    return array
  end

  # grab first element as a pivot element
  # => push all other elements less than pivot into left
  # => all elements greater or equal to right
  pivot = array[0]
  left = []
  right = []

  array[1..-1].each do |val|
    if val < pivot
      left.push(val)
    else
      right.push(pivot)
    end
  end

  # recursively call left
  # => and pivot plus recursive call with right
  quick_sort(left) + pivot + quick_sort(right)
end

class array
  def quick_sort
    if self.length <= 1
      return self
    end

    pivot = array[0]
    left = []
    right = []

    self[1..-1].each do |val|
      if val < pivot
        left.push(val)
      else
        right.push(cal)
      end
    end

    left.quick_sort + pivot + right.quick_sort
  end
end

print quick_sort([8,7,6,5,4,3,2,1])
print "\n"
print [8,7,6,5,4,3,2,1].quick_sort
