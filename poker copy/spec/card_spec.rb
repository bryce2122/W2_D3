require 'rspec'
require 'card'

describe "initialize" do
  subject(:card) {Card.new(8, "club")}

  it "set value" do
    expect(card.value).to eq(8)
  end

  it "set suit" do
    expect(card.suit).to eq("club")
  end
end
