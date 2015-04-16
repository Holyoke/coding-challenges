require "rspec"
require "main.rb"
require "byebug"

describe "#method" do

	context "Analysis" do
		it "should find the largest continuous sum" do
			arr = [ -40,1,40,-50,1,50,-20,1,20,0,0]
			answer = 52

			expect(kadane(arr)).to eq(answer)
		end

		it "should find the largest continuous sum with indexes"
	end

end