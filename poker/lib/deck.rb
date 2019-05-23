require_relative "card.rb"

class Deck
  def initialize
    @cards = []
    fill_deck
    shuffle
  end

  def show_cards
    @cards.dup
  end

  private
  attr_accessor :cards

  SUITS = ["Diamonds", "Hearts", "Clubs", "Spades"].freeze

  NUMS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"].freeze

  def fill_deck
    SUITS.each do |suit|
      NUMS.each do |num|
        cards << Card.new(num, suit)
      end
    end

    cards
  end

  def shuffle
    cards.shuffle!
  end

end