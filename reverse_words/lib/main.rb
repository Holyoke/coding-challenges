require "byebug"
require "set"

def reverse_words(str)
end

def reverse_word(str)
	0.upto(str.length / 2) do |i|
		front = i
		back = str.length - i

		swap(str, front, back)
	end
	nil
end

def swap(str, i, j)
	str[i],str[j] = str[j],str[i]
	nil
end