require "byebug"
require "set"

def self_describing_numbers(num)
	character_count = character_count(num)
	position_count = position_count(num)

	state = character_count == position_count.select {|k,v| v > 0}

	state ? "1" : "0"
end

def character_count(str)
	count = Hash.new(0)

	str.each_char do |c|
		count[c] += 1
	end

	count
end

def position_count(str)
	number_count = Hash.new(0)

	0.upto( str.length - 1).each do |i|
		number_count[i.to_s] = str[i].to_i
	end

	number_count
end
# 
p self_describing_numbers("2020")