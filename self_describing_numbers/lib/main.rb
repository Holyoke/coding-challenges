require "byebug"
require "set"

def self_describing_numbers(input)
	# input = input.split("\n")


end

def character_count(str)

end

def position_count(str)
	number_count = Hash.new(0)

	0.upto( input.length - 1).each do |i|
		number_count[i] = input[i].to_i
	end

	number_count
end

p self_describing_numbers("2020")