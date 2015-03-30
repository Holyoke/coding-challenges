require "byebug"
require "set"



def method(input)

end

def decimal_to_binary(num,base)
	str = "" 

	i = 0

	until base**(i) >= num
		str += ((num / base**i) % base).to_s
		i += 1
	end

	
end

p decimal_to_binary(123, 10)