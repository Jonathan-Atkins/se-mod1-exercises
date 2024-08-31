class Bag
    attr_reader :empty, :count, :candies
    def initialize
        @empty = true
        @count = 0
        @candies = []
    end
    
    def empty?
        @empty
    end

    def add_candy(candy)
        @count += 1
        @empty = true
        @candies << candy
    end
end
