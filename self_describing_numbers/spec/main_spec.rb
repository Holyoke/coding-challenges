require "rspec"
require "main.rb"
require "byebug"

describe "#self_describing_numbers" do

	context "Test Case 1 Analysis" do
		let(:input) { "2020" }

		it "character counts" do
			answer = { "2" => 2, "0" => 2}
			result = character_count(input)

			expect(result).to  eq(answer)
		end

		it "analyzes the positions and numbers" do
			answer = {"0"=>2, "1"=>0, "2"=>2, "3"=>0}
			result = position_count(input)
			
			expect(result).to  eq(answer)
		end

		it "satisfies self describing conditions" do
			result = self_describing_numbers(input)

			expect(result).to eq("1")
		end

	end


	context "Sample Cases Files" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		it "passes sample test 1 " do

			input = sample_input.split("\n")[0]
			output = self_describing_numbers(output)
			answer = sample_output.split("\n")[0]

			expect(output).to  eq(answer)
		end

		it "passes sample test 2"

		it "passes sample test 3"
	end
end