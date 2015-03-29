require "rspec"
require "main.rb"
require "byebug"

describe "#self_describing_numbers" do

	context "Test Case 1 Analysis" do
	end

	context "Sample Cases Files" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		it "passes sample test 1 " do

			input = sample_input.split("\n")[0]
			answer = sample_output.split("\n")[0]

			output = self_describing_numbers(input)

			expect(output).to  eq(answer)
		end

		it "passes sample test 2" do
			input = sample_input.split("\n")[1]
			answer = sample_output.split("\n")[1]

			output = self_describing_numbers(input)

			expect(output).to  eq(answer)
		end

		it "passes sample test 3" do
			input = sample_input.split("\n")[2]
			answer = sample_output.split("\n")[2]

			output = self_describing_numbers(input)

			expect(output).to  eq(answer)
		end
	end
end