class Wizard
    attr_reader :name, :bearded, :rested
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @cast_count = 0
    end

    def bearded?
        @bearded
    end

    def incantation(spell)
        "sudo #{spell}"
    end
    
    def rested?
        @cast_count < 1
    end

    def cast
        @cast_count += 1
        @rested = rested? #updates rested status
        "MAGIC MISSILE"
    end  
end
