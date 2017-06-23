def merge_sort(array)
  if array.length <= 1
    return array
  end

  midpoint = array.length / 2
  left = array[0...midpoint]
  right = array[midpoint..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  merged = []

  while left.length > 0 && right.length > 0
    if left[0] > right[0]
      merged.push(right.shift)
    else
      merged.push(left.shift)
    end
  end

  merged.concat(left).concat(right)
end

array = [8,7,6,5,4,3,2,1]

print merge_sort(array)
