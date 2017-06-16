def binary_search(arr, target)
  if arr.length <= 1 && arr[0] != target
    return -1
  end

  midpoint = arr.length / 2

  if target < arr[midpoint]
    binary_search(arr[0...midpoint], target)
  elsif target == arr[midpoint]
    return midpoint
  else
    result = binary_search(arr[midpoint + 1..-1], target)
    !result.nil? ? result + midpoint + 1 : nil
  end

end

print binary_search([1,2,3,4,5,6,7,8], 1)
