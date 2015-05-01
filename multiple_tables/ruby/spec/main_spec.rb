require "rspec"
require "main.rb"
require "byebug"

describe "#method" do

	context "Test Case 1 Analysis" do
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the sample test" do 
				output = sample_output
				result = display_multiplication_table

				expect(result).to eq(output)
			end


		end
	end
end