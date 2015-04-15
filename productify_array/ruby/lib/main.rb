require "byebug"
require "set"

def productify(input)
	result = []

	input.each do |el|
		products = input.dup
		products.delete(el)
		result << products.inject(:*)
	end
	result
end
