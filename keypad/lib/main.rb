require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def keypad_word?(numbers, word)
  codex = { "a" => '2', "b" => '2', "c" => '2'}
  digits = numbers.split("")
  str = ""
  word.each_char do |letter|
    str += codex[letter]
  end

  return str == numbers
end
