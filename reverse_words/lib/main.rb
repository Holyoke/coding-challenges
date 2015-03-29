require "byebug"
require "set"

def reverse_sentence(str)
	reverse_word(str)

	front = 0
	0.upto(str.size) do |x|
		if str[x] == " "
			reverse_word(str[front..x])
			front = x
			byebug
		end
	end
	nil
end

# eerhT owT enO



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