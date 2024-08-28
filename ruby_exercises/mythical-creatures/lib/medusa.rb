class Medusa
    attr_reader :name, :statues
    
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        @statues << victim
    end
end

class Person
    attr_reader :name, :stoned
    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end

    def updated_stoned_status(medusa)
        @stoned = medusa.statues.includes?(@name)
    end

end