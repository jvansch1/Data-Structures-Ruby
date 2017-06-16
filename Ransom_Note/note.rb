
# Able to check whether enough words are available magazine string to make up ransom string


  ransom_hash = {}

  # Go through ransom and count the number of times each word occurs
  ransom.each do |word|
      if ransom_hash[word]
          ransom_hash[word] += 1
      else
          ransom_hash[word] = 1
      end
  end

  puts ransom_hash

  # go through magazine string and subtract the number of times each word
  # appears from ransom hash
  magazine.each do |word|
      if ransom_hash[word]
          ransom_hash[word] -= 1
      end
  end

  puts ransom_hash

  # check the values of ransom hash
  # => if value > 0, it means there are not enough words in magazine and false should be returned
  # => if value is negative, means there are excess of words in magazine
  ransom_hash.each do |k,v|
     if v > 0
         print "No"
         return false
     end
  end

  print "Yes"
  return true
end
