def binary_search(arr, target)
  # if our arr has a length of 1 and the element is not the target,
  # return -1 to indicate it was not found
  if arr.length <= 1 && arr[0] != target
    return -1
  end

  midpoint = arr.length / 2

  # if target is less than midpoint, search left of midpoint
  if target < arr[midpoint]
    binary_search(arr[0...midpoint], target)
  # if target == midpoint, return midpoint index
  elsif target == arr[midpoint]
    return midpoint
  # if target is greater than midpoint, search right
  # when we get a result back it will be in reference to
  # the subset (might return 0 but mean index 4 etc.)
  # add current midpoint + 1 in order to correctly represent index value
  else
    result = binary_search(arr[midpoint + 1..-1], target)
    result == -1 ? result + midpoint + 1 : -1
  end

end

print binary_search([1,2,3,4,5,6,7,8], 10)
