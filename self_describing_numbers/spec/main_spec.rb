require "rspec"
require "main.rb"

describe "#self_describing_numbers" do

	it "passes sample" do
		input = File.read("spec/sample_input.txt")
		output = File.read("spec/sample_output.txt")

		self_describing_numbers(output).should == output.split("\n")
	end
end