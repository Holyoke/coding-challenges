require "rspec"
require "main.rb"
require "byebug"

describe "#keypad_translate" do

	context "Encodes numbers to the International Standard" do
		it "confirms 222 is 'abc'" do
			number = '222'
			word = 'abc'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 333 is 'def'" do
			number = '333'
			word = 'def'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 444 is 'ghi'" do
			number = '444'
			word = 'ghi'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 555 is 'jkl'" do
			number = '555'
			word = 'jkl'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 666 is 'mno'" do
			number = '666'
			word = 'mno'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 7777 is 'pqrs'" do
			number = '7777'
			word = 'pqrs'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 888 is 'tuv'" do
			number = '888'
			word = 'tuv'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 9999 is 'wxyz''" do
			number = '9999'
			word = 'wxyz'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end
		it "confirms 0 is space" do
			number = '0'
			word = ' '

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end
	end

	context "Word Confirmation" do
		it "confirms 43556 is hello" do
			number = '43556'
			word = 'hello'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end

		it "confirms 43506 is hel o" do
			number = '43506'
			word = 'hel o'

			result = keypad_word?(number, word)
			expect(result).to eq(true)
		end
	end

	# context "Sample Input" do
	# 	let(:sample_input) { File.read("spec/sample_input.txt") }
	# 	let(:sample_output) { File.read("spec/sample_output.txt")}
	#
	# 	describe "Sample Input Tests" do
	# 		it "passes the first sample test" do
	# 			input = sample_input.split("\n")[0]
	# 			output = sample_output.split("\n")[0].to_i
	#
	# 			# result = multiples_of_a_number(input)
	#
	#
	# 			expect(result).to eq(output)
	# 		end
	#
	# 		it "passes the second sample test" do
	# 			input = sample_input.split("\n")[1]
	# 			output = sample_output.split("\n")[1].to_i
	#
	# 			# result = multiples_of_a_number(input)
	#
	#
	# 			expect(result).to eq(output)
	# 		end
	#
	# 	end
	# end
end
