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

def max_range_sum_01(input)
	period = input.shift()
	prices = input.first.split.map!{ |c| c.to_i }

	max_profit = 0
	streaks = Hash.new(0)

	prices.each_with_index do |price, idx|
		if idx < period
			sum += price
		else
			sum += price
			sum -= prices[idx - period]
			current_streak = prices[period - idx, period]
			streaks[current_streak] = sum
		end
	end

	streaks
end

def max_range_sum_02(period, prices)

	max_profit = 0
	sum = 0

	prices.each_with_index do |price, idx|
		if idx < period
			sum += price
		else
			sum += price
			sum -= prices[idx - period]
			current_streak = prices[idx - period + 1, period]
			max_profit = [max_profit, sum].max
		end

	end

	max_profit
end

def max_range_sum_03(input)
	period, prices = input.split(";")
	period = period.to_i
	prices = prices.split.map{|c| c.to_i}

	max_profit = 0
	sum = 0

	prices.each_with_index do |price, idx|
		if idx < period
			sum += price
		else
			sum += price
			sum -= prices[idx - period]
			current_streak = prices[idx - period + 1, period]
			max_profit = [max_profit, sum].max
		end

	end

	max_profit = 0 if max_profit < 0

	max_profit.to_s
end



def get_streaks(input)
	period, prices = input.split(";")
	period = period.to_i
	prices = prices.split.map{|c| c.to_i}

	streaks = Hash.new(0)
	prices.each_with_index do |price, idx|
		break if idx + period > prices.size
		streak = prices[idx + 1,period]
		sum = streak.inject(:+)

		if sum.nil? || sum < 0
			streaks[streak] = 0
		end

		streaks[streak] = sum unless sum.nil?
	end

	answer = streaks.values.max 

	answer = answer < 0 ? "0" : answer.to_s 
end

# input = "26;-93 -94 26 -77 -91 -31 -56 -13 55 -3 16 44 89 -52 -29 63 -29 51 91 -41 73 -52 75 86 68 3 47 -80 -43 -95 57"
# edge = "1;-5 -4 -3 -1 0"
# # max_range_sum_03(input)
# # get_streaks(edge).each do |k,v|
# # 	puts "#{k}, #{v}"
# # end

# p get_streaks(input)
# p get_streaks(edge)


