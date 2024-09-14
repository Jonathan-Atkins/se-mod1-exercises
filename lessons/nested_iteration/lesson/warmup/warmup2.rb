# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

nested_animals = nested_animals.flatten
p nested_animals.join(',')


# 2. Return an unnested array of animals with length >= 4



# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
pet_inventory = {
    kat: [cat, cat, cat],
    bob: [fish, snake, gerbil],
    stoney: [cat, dog],
    gerri: [dog, dog],
    jamison: [bird, dog]
}

pet_types = []


