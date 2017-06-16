require 'byebug'

def solve(a)
    # If the length of the array is 1, it will always be true
    return true if a.length == 1

    # set up two sums
    # => right sum will start with the entire sum of array
    # => left sum starts at 0
    right_sum = 0
    left_sum = 0
    a.each do |value|
        right_sum += value
    end
    # set left_sum == to first element of the array
    # subtract first element from right sum
    left_sum = a[0]
    right_sum -= a[0]

    #first element has already been dealth with, so iterate from [1..-1]
    a[1..-1].each do |value|

        # subtract current value from right sum, we want to get the sum
        # on either side of this element so it should not be included
        right_sum -= value

        if left_sum == right_sum
            return true
        end
        # if there is no match, add the element to the left sum
        left_sum += value
    end
    return false
end

print solve([1,2,3,3])
