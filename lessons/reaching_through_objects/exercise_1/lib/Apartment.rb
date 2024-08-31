require './lib/Room'

class Apartment
    
    attr_reader :rented, 
                :rooms

    def initialize(rented= false)
        @rented = rented
        @rooms = []
    end

    def rent
        @rented = true
    end

    def is_rented?
        @rented
    end
    
    def move_out?
        @rented = false
    end

    def list_rooms_by_name_alphabeltically
        @rooms.sort_by(&:name)
    end

    def add_room(new_room)
        if @rooms.count < 4
            @rooms << new_room
        else
            p "No more rooms available"
        end
    end
end
require 'pry'; binding.pry