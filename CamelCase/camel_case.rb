# Break up a camelcase word into array and return length

s = gets.strip

#start index is the beginning of current_word, it will be reset when a uppercase letter is found
#ending index will be used to determine the length of current word
start_index = 0
ending_index = 0
word_array = []

# ending index will be our iterator
while ending_index < s.length
    # if an uppercase letter is found
    if s[ending_index].ord < 97

        # push the current section of string into thr array
        word_array.push(s[start_index..ending_index])
        # set start index to ending_index so a new word will be started
        start_index = ending_index
    end

    # this algorithm will not find the last word so add 1 to result
    ending_index += 1

end
