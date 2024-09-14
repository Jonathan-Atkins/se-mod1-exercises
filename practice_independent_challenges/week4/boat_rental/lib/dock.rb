require 'pry'
class Dock
    attr_reader :name,
                :max_rental_time,
                :rental_log

    def initialize(name, max_rental_time)
        @name            = name
        @max_rental_time = max_rental_time
        @rental_log      = {}
    end

    def rent(boat, renter)
        @rental_log[boat] = renter
    end
    
    def charge(boat)
      
        {
            :card_number => @rental_log[boat].credit_card,
            :amount      => determine_total_price(boat)
        }
    end
    
    def determine_total_price(boat)
        if boat.hours_rented > @max_rental_time 
            boat.price_per_hour * @max_rental_time
        else
            boat.total_price
        end
    end

    def return(boat)
        @rental_log.delete(boat)
    end
    
    def log_hour
       @rental_log.keys.each do |boat|
        boat.hours_rented += 1
       end 
    end
end