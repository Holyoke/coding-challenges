require "byebug"
require "set"

def reverse_words(str)

	nil
end

def reverse_word(str)
	0.upto(str.length / 2 - 1) do |x|
		front = x
		back = str.length - x - 1

		swap(str, front, back)
	end
	nil
end

def swap(str, i, j)
	str[i],str[j] = str[j],str[i]
	nil
end