class Renter
    attr_accessor :name,
                :credit_card

    def initialize(name,credit_card)
        @name = name
        @credit_card = credit_card
    end    
end