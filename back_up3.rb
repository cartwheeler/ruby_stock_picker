days = (0...9).to_a
# print days

stock_prices = []
for i in 0...9
	stock_prices.push(rand(99)+1)
end
print stock_prices

stock_prices_by_day = Hash[days.zip stock_prices]
# print stock_prices_by_day

stock_picker = Hash.new

8.times do

profit = stock_prices.max - stock_prices[0]
print " "
print profit
print " "
print stock_prices.max
print " "
puts stock_prices_by_day.key(stock_prices.max)
print " "

stock_picker[profit] = stock_prices_by_day.key(stock_prices.max)

stock_prices.shift
print stock_prices
print " "

end

puts
puts stock_picker

print stock_picker.keys
puts
puts stock_picker.keys.max

buy_day = stock_picker.keys.index{|x| x== stock_picker.keys.max}
puts buy_day

puts stock_picker

sell_day = stock_picker[stock_picker.keys.max]

print stock_picker[stock_picker.keys.max]
puts

puts "Buy on day #{buy_day} and sell on day #{sell_day}"


#  > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12
