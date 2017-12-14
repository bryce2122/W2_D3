require 'rspec'
require 'deck'

describe "set deck" do
  subject(:standard) {Deck.new}
  let(:copy) {Deck.new}
  it "check number of cards" do
    expect(standard.deck.count).to eq(52)
  end

  it "check value of cards proportionally" do
    values = standard.deck.map {|deck| deck.value}
    values.uniq.each do |value|
      expect(values.count(value)).to eq(4)
    end
  end

  it "check count of each suit" do
    suits = standard.deck.map {|deck| deck.suit}
    suits.uniq.each do |suit|
      expect(suits.count(suit)).to eq(13)
    end
  end

  it "check shuffle method" do
    standard.shuffle
    expect(standard.deck).to_not eq(copy.deck)
  end
end
