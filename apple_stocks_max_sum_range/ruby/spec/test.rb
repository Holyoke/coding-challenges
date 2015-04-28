require "byebug"
require "../lib/main.rb"

File.read("./test_input.txt").each_line do |line|
	p max_range_sum_03(line)
	p get_streaks(line).select {| k, v| v == 325}
end