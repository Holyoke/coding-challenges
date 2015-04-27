require "rspec"
require "main.rb"
require "byebug"

describe "#max_sum_range" do

	context "Analysis" do
		input = [17,3,6,9,15,8,6,1,10]

		it "brute forces" do
			result = brute_force(input)

			expect(result).to eq(12)
		end

		it "does it one pass" do
			result = max_sum_range_01(input)

			expect(result).to eq(12)			
		end

		it "handles negative sequences" do
			result = max_sum_range_02(input)

			expect(result).to eq(12)			
		end
	end

	# context "Sample Input" do
	# 	let(:sample_input) { File.read("spec/sample_input.txt") }
	# 	let(:sample_output) { File.read("spec/sample_output.txt")}

	# 	describe "Sample Input Tests" do
	# 		it "passes the first sample test" do 
	# 			input = sample_input.split("\n")[0]
	# 			output = sample_output.split("\n")[0].to_i

	# 			# result = multiples_of_a_number(input)


	# 			expect(result).to eq(output)
	# 		end

	# 		it "passes the second sample test" do 
	# 			input = sample_input.split("\n")[1]
	# 			output = sample_output.split("\n")[1].to_i

	# 			# result = multiples_of_a_number(input)


	# 			expect(result).to eq(output)
	# 		end

	# 	end
	# end
end