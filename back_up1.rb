days = (0...9).to_a
print days

stock_prices = []
for i in 0...9
	stock_prices.push(rand(99)+1)
end
print stock_prices

stock_prices_by_day = Hash[days.zip stock_prices]
print stock_prices_by_day

profit = stock_prices[1] - stock_prices[0]
puts profit

for i in 1...8
	stock_prices[i+1] - stock_prices[0] > profit ? profit = stock_prices[i+1] - stock_prices[0] : profit
	sell_day = stock_prices.index(stock_prices[0]+profit)
end
puts profit
puts sell_day

stock_picker = [0, sell_day]
print stock_picker





#  > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12
