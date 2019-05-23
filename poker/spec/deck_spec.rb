require "deck"

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "deck should be an array" do
      expect(deck.show_cards).to be_a(Array)
    end
   
    it "creates a deck of 52 unique cards" do
      expect(deck.show_cards.length).to eq(52)
    end

    it "deck should only contain Card instances" do
      expect(deck.show_cards).to all( be_a(Card) )
    end
  end


end