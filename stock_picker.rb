def stock_picker(prices)
  collection = []
  results = []

prices.each_index {|index|
  
  remainder = prices.slice(index, prices.length - 1)
  max_remainder = remainder.max

  results << max_remainder - prices[index]
  collection << {combination: [max_remainder, prices[index]],
  index: [index, prices.find_index(max_remainder)]}
  } 

puts collection.dig(results.find_index(results.max), :index)

end


stock_picker([17,3,6,9,15,8,6,1,10])


#{result: xx  daysindex: [x, y]}