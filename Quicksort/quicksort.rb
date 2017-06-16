# Runtime: O(n * logn)
# => At each iteration, the input is being broken in half, (O(log n))
# => each of these iterations must scan entire array to partition it (O(n))
# => Final runtime is O(n * logn)

def quickSort( ar)
    if ar.length <= 1
        return ar
    end

    pivot = ar[0]
    left = []
    right = []

    ar.each do |value|
        if value < pivot
            left.push(value)
        else
            right.push(value)
        end
    end

    return quickSort(left) + quickSort(right)
end

print quickSort([8,7,6,5,4,3,2,1])
