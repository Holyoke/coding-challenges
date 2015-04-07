require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def word_chain_simple(input)

end

def build_hash_chain(input)
	result = Hash.new(nil)

	input.each do |word|
		key = word[0]
		value = word[-1]

		result[key] = value
	end

	result
end
