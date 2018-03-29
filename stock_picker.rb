stock_prices = []
for i in 0...9
	stock_prices.push(rand(99)+1)
end
print stock_prices

def stock_picker(stock_prices)
	
days = (0...9).to_a
stock_prices_by_day = Hash[days.zip stock_prices]
stock_picker = Hash.new

8.times do
profit = stock_prices.max - stock_prices[0]
stock_picker[profit] = stock_prices_by_day.key(stock_prices.max)
stock_prices.shift
end

profit = stock_picker.keys.max
buy_day = stock_picker.keys.index{|x| x== stock_picker.keys.max}
sell_day = stock_picker[stock_picker.keys.max]

puts
puts "Buy on day #{buy_day} at $#{stock_prices_by_day[buy_day]} and sell on day #{sell_day} at $#{stock_prices_by_day[sell_day]} for a profit of $#{profit}"

end

stock_picker(stock_prices)