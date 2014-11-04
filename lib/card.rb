module BlackJack
  class Card

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def suit
    @suit
  end

  def face
    @face
  end

  def values
    if face == "A"
      [1, 11]
    elsif face == "Q" || face == "K" || face == "J"
      [10]
    else
      [face().to_i]
    end
  end

  def ==(card_2)
    face == card_2.face && suit == card_2.suit  # don't need card_1 in front of face or suit
  end

  end
end
