


class Hand

TYPE_OF_HAND = [
  "one_pair",
  "two_pairs",
  "three_of_a_kind",
  "straight",
  "flush",
  "full_house",
  "four_of_a_kind",
  "straight_flush"
]

def determine_hand(hand_arr)
  type = "high_card"
  hand_arr.each do |hand|
    type = hand if self.send(hand)
  end
  type
end










  def initialize(hand)
    @hand = hand

  end




  def one_pair
    hand.uniq.each do |card|
      return true if hand.count(card) == 2
    end


  end


  def two_pairs
    count = 0
    hand.uniq.each do |card|
      count += 1 if hand.count(card) == 2
    end

    count == 2 ? true : false
  end



  end

  def three_of_a_kind
    hand.uniq.each do |card|
      return true if hand.count(card) == 3
    end
end


  def straight
    hand.sort.reverse.each_with_index do |el,idx|
      return false unless (hand[idx] - hand[idx + 1]) == 1
    end
    true
  end

  def map_to_attribute(attr)
    hand.map {|card| card.send(attr)}

  end


  def flush

    hand.all?


  end


  def full_house


  end

  def four_of_a_kind


  end


  def straight_flush


  end


  it "royal_flush"
