module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "ten", "jack", "queen", "king" then 10
    when "nine" then 9
    when "eight" then 8
    when "seven" then 7
    when "six" then 6
    when "five" then 5
    when "four" then 4
    when "three" then 3
    when "two" then 2
    else 0
    end
  end

  def self.card_range(card1, card2)
    card1_value = parse_card(card1)
    card2_value = parse_card(card2)
    total_points = card1_value + card2_value
    case total_points
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when card_range(card1, card2) == "blackjack" && dealer_card == "ace"
      "S"
    when card_range(card1, card2) == "blackjack"
      "W"
    when card_range(card1, card2) == "high"
      "S"
    when card_range(card1, card2) == "mid" && parse_card(dealer_card) >= 7
      "H"
    when card_range(card1, card2) == "mid"
      "S"
    when card_range(card1, card2) == "low"
      "H"
    end
  end
end
