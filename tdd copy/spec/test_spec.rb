require 'test'

describe "array methods" do
  subject(:array) { [1, 1, 2, 2, 3, -3, -2] }
  subject(:array2) {[[1,2,3], [4,5,6], [7,8,9]]}

  it "remove_dups" do
    remove_dups(array)
    expect(array).to eq([1, 2, 3, -3, -2])
  end

  it "add two sum" do
  expect(array.two_sums).to eq([[2,6],[3,6],[4,5]])
  end

  it "transposes nested array" do
    expect(array2.my_transpose).to eq([[1,4,7], [2,5,8], [3,6,9]])
  end


end

describe "stock pick" do
  subject(:stock_price) {[10, 50, 1, 5, 6, 7, 8, 9, 3]}

  it "make sure buy date is before sell date" do
    expect(max_profit(stock_price).first).to be < max_profit(stock_price).last
  end


  it "make sure max profit" do
    expect(max_profit(stock_price)).to eq([1,2])

  end
end

describe "Towers of Hanoi" do
  subject(:game) {Game.new}

  describe "game" do

    before(:each) {game.move(0,1)}

    it "move" do
      expect(game.towers[0]).to eq([2,3])
      expect(game.towers[1]).to eq([1])
    end

    it "is move valid" do
      
      expect{game.move(0,1)}.to raise_error("You can not move there")
    end

    it "won" do
      game.towers = [[],[],[1,2,3]]

      expect(game.won?).to eq(true)
    end
  end
end
