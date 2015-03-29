require "byebug"
require "set"

def self_describing_numbers_old(num)
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

def self_describing_numbers(str)
	(0...str.length).each do |i|
		val = str[i]
		return "0" unless ( str.count(i.to_s) == val.to_i )
	end
	"1"
end

# str = "6210001000"

# p step_by_step(str)
# File.open(ARGV[0]).each_line do |line|
# end