# Given an array a, return the number of pairs whose difference = k

def pairs(a,k)

    difference_hash = {}
    # for each value, store in hash witht the value being the number minus the target difference_hash
    # the resulting value, if found in the hash, will be a valid pair
    a.each do |value|
        difference_hash[value] = value - k
    end

    pairs = []
    # if the value of the pair is present, there is a valid pair in the array
    difference_hash.each do |k,v|
        if difference_hash[v]
           pairs.push([k, v])
        end
    end
    # print the number of pairs found
    print pairs.length
end
