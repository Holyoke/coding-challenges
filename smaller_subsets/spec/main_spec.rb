require "rspec"
require "main.rb"
require "byebug"

describe "#subsets" do

	context "Test Case 1 Analysis" do
		it "handles an empty array" do 
			answer = [[]]
			input = []

			expect(subsets(input)).to eq(answer)
		end

		it "finds the subsets of one element" do 
			input = ["a"]
			answer = [[], ["a"]]
			
			expect(subsets(input)).to eq(answer)
		end

		it "finds the subsets of two elements"

		it "finds the subsets of sets"
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