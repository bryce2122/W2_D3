  require 'card'
  class Deck
    SUITS = [
      "club",
      "heart",
      "diamond",
      "spade"
    ]

    VALUES = [
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14
    ]

  def self.create_deck
    deck = []
    VALUES.each do |value|
      SUITS.each do |suit|
        deck << Card.new(value,suit)
      end
    end

  end


    attr_reader :deck

    def initialize

      @deck = Deck.create_deck

    end

    def shuffle
      @deck.shuffle!
    end

end
