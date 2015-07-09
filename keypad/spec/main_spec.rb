require "rspec"
require "main.rb"
require "byebug"

describe "#keypad_translate" do

	context "Encodes numbers to the International Standard" do
		it "confirms 222 is 'abc'"
		it "confirms 333 is 'def'"
		it "confirms 444 is 'ghi'"
		it "confirms 555 is 'jkl'"
		it "confirms 666 is 'mno'"
		it "confirms 777 is 'pqrs'"
		it "confirms 888 is 'tuv'"
		it "confirms 999 is 'wxys''"
		it "confirms 0 is space"
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
