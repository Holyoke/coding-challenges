require "rspec"
require "main.rb"
require "byebug"

describe "#reverse_words" do

	context "Test Case 1 Analysis" do
		let(:input) { "One Two Three"}

		it "swaps characters around" do
			str = "abc"
			answer = "cba"

			swap(str, 0, 2)

			expect(str).to eq(answer)
		end

		it "reverses a word" do 
			str = "abcd"
			answer = "dcba"

			reverse_word(str)

			expect(str).to eq(answer)
		end


		it "reverses sentance"
	end

	context "Sample Cases Files" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}
	end
end