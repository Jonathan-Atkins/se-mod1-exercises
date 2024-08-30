class Werewolf
    attr_reader :name, :location, :human, :hungry
    
    def initialize (name,location)
    @name = name
    @location = location
    @human = true
    @hungry = false
    end

    def human?
        @human
    end

    def change!
        @human = !@human
        if @human = true
            @hungry = false
        end
    end

    def wolf?
        if @human == false
            true
        end
    end

    def hungry?
        @hungry
    end
end
