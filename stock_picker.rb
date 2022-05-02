arr = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
    trade_hash = Hash.new(0)
    (0..array.length-1).to_a.combination(2).to_a.select {|pair| trade_hash[pair] = array[pair[1]] - array[pair[0]]}
    p trade_hash.key(trade_hash.values.max)
end

stock_picker(arr)



