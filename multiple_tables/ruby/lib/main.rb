def get_multiplication_table
	matrix = []
	row = []
	(1..12).each do |x|
		(1..12).each do |y|
			row << x*y
		end
		matrix << row
		row = []
	end

	matrix
end

def display_num(num)
	str = " "*4
	idx = 4 - num.length
	str[idx, num.length] = num
	str
end

def display_multiplication_table
	table = get_multiplication_table

	str = ""
	table.each do |row|
		str += row.shift.to_s
		row.each do |num|
			num = display_num(num.to_s)
			num = ""
		end
		str += "\n"
	end
	str
end

puts display_multiplication_table