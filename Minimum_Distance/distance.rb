n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

# Hash will keep track of all the elements and the indices at which
# They appear in the array
count_hash = {}

a.each_with_index do |value, index|
   if count_hash[value]
       count_hash[value] << index
   else
       count_hash[value] = [index]
   end
end

minimum_distance = 1000000000


count_hash.each do |k,v|
  # Sort each of the value arrays
   v = v.sort
   # if the length is less than 2 there is only one occurence so there is no distance
   if v.length < 2
       next
   # Else we grab the first smallest two indices because this will be the minimum_distance
   # distance for that element
   # if it is smaller that the current minimum_distance, replace it
   elsif (v[0] - v[1]).abs < minimum_distance
       minimum_distance = (v[0] - v[1]).abs
   end
end

print minimum_distance == 1000000000 ? "-1" : minimum_distance
