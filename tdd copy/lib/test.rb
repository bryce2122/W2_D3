def remove_dups(array)
  array.uniq!
end

class Array

  def two_sums
    result = []
    self.each_index do |idx|
      self.each_index do |idx2|
        next if idx2 <= idx
        break if idx == length - 1
        result << [idx, idx2] if self[idx] + self[idx2] == 0
      end
    end
    result
  end

  def my_transpose
    result = []
    self.each_index do |idx|
      chunk = []
      self.each do |sub|
        chunk << sub[idx]
      end
      result << chunk
    end
    result
  end

end


def max_profit(stock_price)

  max = stock_price[1] - stock_price[0]
  result = [0,1]

  stock_price.each_with_index do |price1,day1|

    stock_price.each_with_index do |price2,day2|

      next if day2 <= day1

      if price2 - price1 > max
        max = price2 - price1
        result = [day1,day2]
      end

    end
  end

  result.map {|day| day + 1}

end

class Game
  attr_accessor :towers
  def initialize
    @towers = [[1,2,3],[],[]]
  end

  def move(from,target)
    p @towers
    p from
    p target

    if is_valid_move?(from,target)

      @towers[target].unshift(@towers[from].shift)
    else
      raise "You can not move there"
    end
  end

  def won?
    @towers[0].empty? && (@towers[1].empty? || @towers[2].empty?)

  end

    private

  def is_valid_move?(from,target)
    possible_tower = @towers[target].dup.unshift(@towers[from].dup.shift)
    p possible_tower
    if possible_tower == possible_tower.sort
      true
    else
      false
    end
  end

end
