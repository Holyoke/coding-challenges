require "set"

def minimum_distance(input)
	num_of_friends = input.shift
	st_addresses = input

	results = Set.new

	st_addresses.each do |i|
		sum = 0

		st_addresses.each do |j|
			sum += (i - j).abs
		end

		results << sum 
	end
	results.min
end