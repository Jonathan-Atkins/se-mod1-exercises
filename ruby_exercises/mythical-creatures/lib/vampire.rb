class Vampire

    attr_reader :name, :pet
    def initialize(name,pet = "bat")
        @name = name
        @pet = pet
    end
    def thirsty
        true
    end
    def drink
        false
    end
end
