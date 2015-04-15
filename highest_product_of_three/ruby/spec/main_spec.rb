require "rspec"
require "main.rb"
require "byebug"

describe "#highest_product" do

	context "Brute Force" do

		it "finds the highest product between 3 numbers" do
			input = [-10,-10,1,3,2]
			answer = 300

			expect(brute_force(input)).to eq(answer)
		end

	end
end