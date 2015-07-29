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



class card_Shuffle
  def initialize(list)
    @list = list
  end

  private
  def riffleShuffle
    #split in half
    #random choose the last of the decks to add to the resulting pile

    left = @list.take(@list.size/2)
    right = @list.drop(@list.size/2)
    result = []

    until (left.empty? && right.empty?)
      rng = rand(2) # either 0 or 1

      if (rng == 0 )
        result.push(left.shift) unless left.empty?
        result.push(right.shift) unless right.empty?
      else
        result.push(right.shift) unless right.empty?
        result.push(left.shift) unless left.empty?
      end
    end

    result
  end

  def cut
    idx = rand(@list.size)

    top = @list[@list.size, @list.size - 1]
    bottom = @list[0, @list.size]

    top + bottom
  end
end
