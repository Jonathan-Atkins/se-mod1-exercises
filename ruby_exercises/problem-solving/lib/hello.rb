class Hello
    attr_reader :hello
    def initialize
        @hello
    end    
    
    def greet(name)
        "Hello, #{name}, nice to meet you!"
    end
end