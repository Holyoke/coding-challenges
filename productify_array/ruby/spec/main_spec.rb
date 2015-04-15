require "rspec"
require "main.rb"
require "byebug"

describe "#Productify" do

	context "Analysis" do
		
	end

	context "Productify" do
		it "Productify's an array" do
			input = [1, 7, 3, 4]
			answer = [84, 12, 28, 21]

			expect(productify(input)).to eq(answer)
		end
	end

end