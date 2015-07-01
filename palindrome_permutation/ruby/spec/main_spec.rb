require "rspec"
require "main.rb"
require "byebug"

describe "#method" do

	context "Analysis" do
		it "determines palindromes" do
			input = "civic"

			expect(is_palindrome?(input)).to eq(true)
		end

		it "doesn't determines palindromes" do
			input = "civac"

			expect(is_palindrome?(input)).to eq(false)
		end

		it "checks for parity" do
		end
	end
end