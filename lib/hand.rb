module BlackJack
  class Hand

    def initialize
      def empty?      # OK to be nested in initialize?
        true
      end

      def values
        []
      end

      @values = []

    end

    def add(new_card)
      @values << new_card
    end

    def size
      @values.size
    end

  end
end
