require "byebug"
require "set"


def myShuffle(arr)
  result = []

  size = arr.size

  size.times do |x|
    idx = rand(size)
    result.push( arr[idx])
  end

  result
end

def faroShuffle(arr)
end
