# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

puts animals.join(" , ")




# 2. Return an array of animals with a length >= 4.
animals =animals.select { |animal| animal.length >= 4}
 p animals
