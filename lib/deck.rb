module BlackJack
  class Deck

  def initialize

    deck = []
    suit = [:heart, :spade, :diamond, :club]
    face = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A", "J", "Q", "K"]

    suit.each do |suit|
        face.each do |face|
          deck << BlackJack::Card.new(suit, face)
        end
    end

    @deck = deck

  end

  def size
    @deck.size
  end

  def cards
    @deck
  end

  def shuffle
    @deck.shuffle #why does test pass even with this removed?
  end

  def deal
    @deck.pop
  end

  end
end
