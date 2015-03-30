require "rspec"
require "main.rb"
require "byebug"

describe "#multiples_of_a_number" do

	context "Test Case 1 Analysis" do
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the first sample test" do 
				input = sample_input.split("\n")[0]
				output = sample_output.split("\n")[0]

				reverse_sentence(input)

				expect(input).to eq(output)
			end

			it "passes the second sample test" do 
				input = sample_input.split("\n")[1]
				output = sample_output.split("\n")[1]

				reverse_sentence(input)

				expect(input).to eq(output)
			end

		end
	end
end