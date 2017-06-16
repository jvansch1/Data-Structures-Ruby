# x1 = kang 1 starting position
# x2 = kang 2 starting position
# v1 = kang 1 rate
# v2 = kang 2 rate

def kangaroo(x1, v1, x2, v2)
    kang_1_position = x1
    kang_2_position = x2
    kang_1_jumps = 0
    kang_2_jumps = 0

    # Return yes if kang 1 and 2 will be on the some spot after the same number of jumps
    while kang_1_position <= 100000000 && kang_2_position <= 100000000
       if kang_1_position == kang_2_position && kang_1_jumps == kang_2_jumps
           print "YES"
           return
       end
        kang_1_position += v1
        kang_2_position += v2
        kang_1_jumps += 1
        kang_2_jumps += 1
    end
    print "NO"
end
