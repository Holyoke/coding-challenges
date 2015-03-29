require "rspec"
require "main.rb"
require "byebug"

describe "#reverse_words" do

	context "Test Case 1 Analysis" do

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

		it "reverses a portion of a word 1" do 
			str = "abcdef"
			answer = "abcfed"

			reverse_word(str, 3, 5)

			expect(str).to eq(answer)
		end

		it "reverses a portion of a word 2" do 
			str = "abcdef"
			answer = "aedcbf"

			reverse_word(str, 1, 4)

			expect(str).to eq(answer)
		end


		it "reverses sentance" do
			str = "One Two Three"
			answer = "Three Two One"

			reverse_sentence(str)

			expect(str).to eq(answer)			
		end
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the first sample test" do 
				input = sample_input.split("\n")[0]
				output = sample_output.split("\n")[0]

				reverse_sentence(input)

				expect(input).to eq(output)
			end

			it "passes the second sample test" do 
				input = sample_input.split("\n")[1]
				output = sample_output.split("\n")[1]

				reverse_sentence(input)

				expect(input).to eq(output)
			end

		end
	end
end