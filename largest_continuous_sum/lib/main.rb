require "byebug"
require "set"

def kadane(arr)
	return if arr.empty?

	max_sum = current_sum = arr.first

	(arr.size).times do |x| 
		num = arr[x]
		current_sum += num

		# current_sum = [current_sum, num].max
		if (current_sum < num) 
			current_sum = num
		end
		# max_sum = [current_sum, max_sum].max

		if (max_sum < current_sum)
			max_sum = current_sum
		end

		max_sum
	end

	max_sum
end

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

	#set max, current to first element
	max_sum = current_sum = arr.first

	# positions to beginning as well
	start = tstart = back = 0

	# iterate through each index
	(1...arr.size).each do |pos|

		#if current element is greater than current_sum + current_el
		if(arr[pos] > current_sum + arr[pos])
			#set start to current pos
			# reset current sum
			tstart = pos
			current_sum = arr[pos]
		else
			#add current_sum
			current_sum += arr[pos]
		end

		#check if current_sum is greater than max recorded
		#if so update everything
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