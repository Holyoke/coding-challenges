require "rspec"
require "minimum_distance"

describe "#minimum_distance" do

	it "passes first example" do
		input = [4, 3, 3, 5, 7]
		output = 6

		minimum_distance(input).should == output
	end

	it "passes second example" do
		input = "3 20 30 40".split.map {|c| c.to_i}
		output = 20

		minimum_distance(input).should == output
	end
end