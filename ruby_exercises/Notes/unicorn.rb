class Unicorn
    attr_reader :name,
                :color,
                :magical_powers
    def initialize(name, color)
        #whatever code is in here get ran 
        #when .new is called on the clas
        @color = color
        @name = name
        @magical_powers = [] #by default a unicorn has an empty array of magical powers
    end

    def say_hello
        puts "Hello my name is #{@name}"
    end
    
    def add_power(power)
        @magical_powers << power
    end

end