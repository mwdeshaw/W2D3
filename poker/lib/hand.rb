require_relative "deck"

class Hand
  def initialize
    @hand = []
    @deck = Deck.new
    create_hand
  end

  def show_hand
    @hand.dup
  end

  def inspect
    "Your hand is: #{@hand}"
  end

  private

  attr_accessor :hand, :deck

  def create_hand
    5.times do 
      hand << deck.draw
    end
  end
end