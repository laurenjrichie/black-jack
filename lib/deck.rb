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

  def shuffle     # @deck.shuffle also works here instead of cards - but John prefers using cards
    cards.shuffle # why does test pass even with this removed?
  end

  def deal
    cards.pop     # cards better than @deck here
  end             # this technically gives us back what we're popping off the array

  end
end
