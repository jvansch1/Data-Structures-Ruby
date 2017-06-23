# Bubble_sort function
# => O(n**2) time complexity

def bubble_sort(array)
  swapped = true

  while swapped
    swapped = false

    array[0..-2].each_with_index do |val, idx|
      if val > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swapped = true
      end
    end


  break if !swapped
  end
  array
end


# Bubble sort patched into array class
class Array

  def bubble_sort
    new_array = self.dup

    swapped = true

    while swapped
      swapped = false

      new_array[0..-2].each_with_index do |val,idx|
        if val > new_array[idx + 1]
          new_array[idx], new_array[idx + 1] = new_array[idx + 1], new_array[idx]
          swapped = true
        end
      end

    break if !swapped
    end
    new_array
  end
end


print bubble_sort([8,7,6,5,4,3,2,1])
print "\n"
print [8,7,6,5,4,3,2,1].bubble_sort
