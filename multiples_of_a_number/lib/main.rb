require "byebug"
require "set"

test = File.read("spec/test_input.txt").split("\n")

def multiples_of_a_number(input)
	x, m = input.split(",")

	x = x.to_i
	m = m.to_i
	a = m 
	until a >= x
		a += m
	end

	a
end

test.each do |line|
	puts line
	puts multiples_of_a_number(line)
	puts
end