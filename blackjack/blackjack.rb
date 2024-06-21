module Blackjack
  def self.parse_card(card)
    case card
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    when "ten", "jack", "queen", "king"
      10
    when "ace"
      11
    else
      0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    else
      "bust"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    score = parse_card(card1) + parse_card(card2)
    dealer_score = parse_card(dealer_card)

    case score
    when 1..11
      'H'
    when 12..16
      if dealer_score < 7
        'S'
      else
        'H'
      end
    when 17..20
      'S'
    when 21
      if [10, 11].include?(dealer_score)
        'S'
      else
        'W'
      end
    when 22
      'P'
    else
      'S'
    end

  end
end
