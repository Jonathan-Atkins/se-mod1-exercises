# 1. Using #each, write the code to find the first sister over four letters in length.
# 2. Once you get the method below to work using #each, refactor your code to use #find. 

def find_first_long_named_sister
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
    new_sister = []
    sisters.each do |sister|
        if sister.length > 4
            new_sister << sister
        end
    end
    new_sister[0]
    new_sister.first
    # should return "Kathleen"
end



p find_first_long_named_sister