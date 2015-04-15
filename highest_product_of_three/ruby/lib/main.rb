require "byebug"
require "set"

# Highest Product

def brute_force(input)
	max_product = 1

	input.each do |x|
		input.each do |y|
			next if y == x
			input.each do |z|
				next if z == y || y == x
				max_product = [max_product, x*y*z].max
			end
		end
	end

	max_product
end
