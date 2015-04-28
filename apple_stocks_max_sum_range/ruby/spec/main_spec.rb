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

		it "does it in one pass and handles negative sequences" do
			result = max_sum_range_02(input)

			expect(result).to eq(12)			
		end
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the first sample test" do 
				input = sample_input.split("\n")[0]
				output = sample_output.split("\n")[0]

				result = max_range_sum_03(input)
				expect(result).to eq(output)
			end

			it "passes the second sample test" do 
				input = sample_input.split("\n")[1]
				output = sample_output.split("\n")[1]

				result = max_range_sum_03(input)
				expect(result).to eq(output)
			end

			it "passes the third sample test" do 
				input = sample_input.split("\n")[2]
				output = sample_output.split("\n")[2]

				result = max_range_sum_03(input)
				expect(result).to eq(output)
			end

			it "passes this test" do 
				input = "26;-93 -94 26 -77 -91 -31 -56 -13 55 -3 16 44 89 -52 -29 63 -29 51 91 -41 73 -52 75 86 68 3 47 -80 -43 -95 57"
				answer = "325"

				result = max_range_sum_03(input)
				expect(result).to eq(answer)
			end


		end
	end
end