class Boat
    attr_accessor :type,
                :price_per_hour,
                :hours_rented

    def initialize(type, price_per_hour = 0)
        @type = type
        @price_per_hour = price_per_hour
        @hours_rented = 0
    end

    def add_hour
            @hours_rented += 1
    end

    def total_price
        @price_per_hour  * @hours_rented
    end    
end 