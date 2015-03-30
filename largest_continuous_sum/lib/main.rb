require "byebug"
require "set"


def largest_continuous_sum(arr)
	return if arr.empty?

	max_sum = current_sum = arr.first

	arr.each do |num|
		next if num == arr.first

		current_sum = [current_sum + num, num].max
		max_sum = [current_sum, max_sum].max
	end

	max_sum
end

def prakash_largest_continuous_sum(arr)
	return if arr.empty?

	max_sum = current_sum = arr.first

	start = tstart = back = 0

	(1...arr.size).each do |pos|

		if(arr[pos] > current_sum + arr[pos])
			tstart = pos
			current_sum = arr[pos]
		else
			current_sum += arr[pos]
		end

		if (current_sum > max_sum)
			max_sum = current_sum
			start = tstart
			back = pos
		end
	end

	[max_sum, start, back]
end

arr = [ -40,1,40,-50,1,50,-20,1,20,0,0]

p prakash_largest_continuous_sum(arr)
p arr.inject(:+)