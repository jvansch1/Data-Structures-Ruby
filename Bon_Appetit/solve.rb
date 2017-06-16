# n = number of items purchased
# k = item that was not split
# b = the amount each person was chared
# ar = array
def bonAppetit(n, k, b, ar)
    sum = 0
    non_split_item = ar[k]
    ar.each do |value|
        sum += value
    end
    # get sum - the item not split
    new_sum = (sum - non_split_item)
    b == new_sum / 2 ? "Bon Appetit" : b - (new_sum / 2)
end
