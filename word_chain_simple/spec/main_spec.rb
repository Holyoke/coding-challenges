require "rspec"
require "main.rb"
require "byebug"

describe "#method" do

	context "Test Case 1 Analysis" do


		it "builds a hash map of words first and final letters" do
			input = %w{abc, cde, efg}
			answer = { "abc" => "cde", "cde" => "efg", "efg" => nil}

			result = build_hash_chain(input)

			expect(result).to eq(answer)
		end

		it "finds the count of the longest path" do
			input = %w{ soup,sugar,peas,rice }
			answer = 4

			result = word_chain_simple(input)

			expect(result).to eq(answer)
		end
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the first sample test" do 
				input = sample_input.split("\n")[0]
				output = sample_output.split("\n")[0].to_i

				# result = multiples_of_a_number(input)


				expect(result).to eq(output)
			end

			it "passes the second sample test" do 
				input = sample_input.split("\n")[1]
				output = sample_output.split("\n")[1]

				# result = multiples_of_a_number(input)


				expect(result).to eq(output)
			end

		end
	end
end