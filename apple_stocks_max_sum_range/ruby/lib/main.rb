require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def brute_force(prices)
	max_profit = 0
	x = prices.size
	(0...x).each do |buy|
		(buy...x).each do |sell|
			profit = prices[sell] - prices[buy]

			max_profit = [max_profit, profit].max
		end
	end

	max_profit
end

def max_sum_range_01(prices)

	max_profit, min_price = 0, 0

	prices.each do |current_price|
		min_price = [current_price, min_price].min 

		current_profit = current_price - min_price

		max_profit = [current_profit, max_profit].max
	end

	max_profit
end

def max_sum_range_02(prices)
	raise "Prices need to have at least 2" if prices.size < 2


	max_profit = prices[1] - prices[0]
	min_price = prices.first

	prices.each_with_index do |current_price, idx|
		next if idx == 0

		current_profit = current_price - min_price
		max_profit = [current_profit, max_profit].max
		min_price = [current_price, min_price].min 
	end

	max_profit
end