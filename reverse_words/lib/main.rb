require "byebug"
require "set"

def reverse_sentence(str)
	reverse_word(str)

	front = 0
	0.upto(str.size) do |x|
		if str[x] == " "
			reverse_word(str, front, x - 1)
			front = x
		end
	end
	nil
end

# eerhT owT enO



def reverse_word(str, i = 0, j = str.length - 1)
	mid = i + ((j - i) / 2)
	back = j + 1

	i.upto(mid) do |x|
		front = x
		back -= 1
		next if front == back

		swap(str, front, back)
	end
	nil
end

def swap(str, i, j)
	str[i],str[j] = str[j],str[i]
	nil
end