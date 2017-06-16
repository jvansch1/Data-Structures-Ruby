# in the array, socks with the same value are the same color
# find number of pairs

def sockMerchant(n, ar)
    sock_count = {}
    # count the socks and store values inside hash
    ar.each do |value|
        if sock_count[value]
            sock_count[value] += 1
        else
            sock_count[value] = 1
        end
    end
    pairs = 0
    # for each type of sock, take the value / 2 and add to number of pairs
    sock_count.each do |k,v|
       pairs += (v / 2)
    end
    pairs
end
