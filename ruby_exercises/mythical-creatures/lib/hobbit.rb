class Hobbit
    attr_reader :name, :disposition, :age, :adult

    def initialize (name, disposition = 'homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @adult = adult?
    end    
    
    def adult?
        @age >= 33
    end

    def celebrate_birthday
        @age += 1
        @adult =adult?
    end

    def old?
        @age > 80
    end

    def has_ring?
        @name == "Frodo"
    end
end
