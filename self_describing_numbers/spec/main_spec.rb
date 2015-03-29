require "rspec"
require "main.rb"

describe "#self_describing_numbers" do

	context "Test case 1 analysis" do

		it "counts the positions and numbers" do
			answer = {0=>2, 1=>0, 2=>2, 3=>0}
			input = "2020"
			position_count(input).expect == answer
		end

		it "character counts" do
			input = "2020"
			answer = { "0" => 2, "1" => 0, "2" => 2, "3" => 0 }

			character_count(input).expect == answer
		end
	end



	it "passes sample" do
		input = File.read("spec/sample_input.txt")
		output = File.read("spec/sample_output.txt")

		self_describing_numbers(output).expect == output.split("\n")
	end
end