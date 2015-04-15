require "rspec"
require "main.rb"
require "byebug"

describe "#Productify" do

	context "Analysis" do
		it "finds the product of the integers before" do 
			input = [3, 1, 2, 5, 6, 4]
			answer = [1, 3, 3*1, 3*1*2, 3*1*2*5, 3*1*2*5*6]

			expect(productify_before(input)).to eq(answer)
		end

		it "finds the product of the integers after" do 
			input = [3, 1, 2, 5, 6, 4]
			answer = [ 1*2*5*6*4, 2*5*6*4 , 5*6*4 , 6*4 , 4, 1]

			expect(productify_after(input)).to eq(answer)
		end
		
	end

	context "Productify" do
		it "Productify's an array" do
			input = [1, 7, 3, 4]
			answer = [84, 12, 28, 21]

			expect(productify(input)).to eq(answer)
		end

		it "Productify's an array with zero's" do
			input = [1, 7, 0, 4]
			answer = [0, 0, 28, 0]

			expect(productify(input)).to eq(answer)
		end
	end

end