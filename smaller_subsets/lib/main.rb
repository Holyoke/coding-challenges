require "byebug"
require "set"

def subsets(array)
	return [[]] if array.empty?

	
end

def subsets_pancham(array)
	return [[]] if array.empty?

	smaller_set = array.take(array.count - 1)
	smaller_subsets = subsets(smaller_set)

	bigger_subsets = []

	smaller_subsets.each do |set|
		bigger_subsets << set + [array.last] 
	end

	smaller_subsets + bigger_subsets
end

p subsets([1,2])