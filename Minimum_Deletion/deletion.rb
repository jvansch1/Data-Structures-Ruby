array_length = gets.chomp
array = gets.chomp.split(' ').map { |x| x.to_i }

# create a hash that will count how many times each element occurs in the array
count_hash = {}

# Count occurences
array.each do |value|
    if count_hash[value]
        count_hash[value] += 1
    else
        count_hash[value] = 1
    end
end

# Find the element which appears the most amount of times.
# => We will keep this element in the array and delete all other elements to get the minimum number

maximum_value = 0
maximum_key = 0

count_hash.each do |k,v|
    if v > maximum_value
        maximum_value = v
        maximum_key = k
    end
end

# After we have the maximum_key, iterate through hash again and add up all values
# not associated with that key to get result
deletion_amount = 0

count_hash.each do |k,v|
   if k == maximum_key
       next
   else
       deletion_amount += v
   end
end

print deletion_amount
