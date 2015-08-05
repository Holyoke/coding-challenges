require "rspec"
require "main.rb"
require "byebug"

#create a method that takes an array
#finds all elements which add to a target
# and sums the indexes
describe "#pairwise" do

	context "Test Scenarios" do
		it "passes the first test" do
			input = [1, 4, 2, 3, 0, 5]
			tar = 7
			expected = 11

			expect(pairwise(input, tar)).to eq(expected)
		end

		it "passes the second test" do
			input = [1, 3, 2, 4]
			tar = 4
			expected = 1

			expect(pairwise(input, tar)).to eq(expected)
		end

		it "works on repeated values" do
			input = [1, 1, 1]
			tar = 2
			expected = 1

			expect(pairwise(input, tar)).to eq(expected)
		end

		it "works on repeated zero values" do
			input = [0, 0, 0, 0, 1, 1]
			tar = 1
			expected = 1

			expect(pairwise(input, tar)).to eq(expected)
		end

		it "returns an error on empty arrays"
	end
end
