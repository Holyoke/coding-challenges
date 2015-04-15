require "byebug"
require "set"

def productify(arr)
	result = []

	#populate result with before products
	product = 1
	(arr.size).times do |x|
		result << product if x == 0
		next if x == arr.size - 1

		product *= arr[x]
		result << product
	end
	
	#go back and multiply backwards
	product = 1
	(arr.size - 1).downto(0) do |x|
		result[x] *= product
		product *= arr[x]
	end

	result
end

def productify_v1(input)
	result = []

	input.each do |el|
		products = input.dup
		products.delete(el)
		result << products.inject(:*)
	end
	result
end

def productify_before(arr)
	result = []

	product = 1
	(arr.size).times do |x|
		result << product if x == 0
		next if x == arr.size - 1

		product *= arr[x]
		result << product
	end
	result
end

def productify_after(arr)
	result = Array.new(arr.size, 1)

	product = 1

	(arr.size - 1).downto(0) do |x|
		result[x] = product
		product *= arr[x]
	end

	result
end