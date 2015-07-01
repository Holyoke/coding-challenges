require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def is_palindrome?(string)
	mid = string.size / 2

	(0..mid).each do |front|
		back = string.size - front - 1
		return false if string[front] != string[back]
	end
	true
end


def reverse(string)
	if string.size <= 1
		return string
	else
		a = string[-1]
		b = reverse(string[0...-1])
		a + b
	end
end

def has_palindrome?(str)
	parity_map = Hash.new

	#build parity map
	str.each_char do |char|
		if parity_map[char]
			parity_map[char] = !parity_map[char]
		else
			parity_map[char] = true
		end
	end
	
	odd_seen = false

	#check if there's more than 1 in the values
	parity_map.values.each do |has_odd_parity|
		if has_odd_parity
			if odd_seen
				return false
			else
				odd_seen = true
			end
		end
	end

	true
end

p has_palindrome?("civicicv")