require "rspec"
require "main.rb"
require "byebug"

describe "#myShuffle" do

	context "Test Case 1 Analysis" do

		it "should not be equal to the original input" do
			input = [1,2,3,4,5]

			expect(myShuffle(input)).to_not equal(input)
		end
	end

	context "Sample Input" do
	end
end
