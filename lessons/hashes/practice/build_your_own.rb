# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here

# Steps
# 1. Create a hash called new_band.
new_band = {}
p new_band  

# 2. Add a bassist to your new_band hash.
new_band[:bassist] = "Walter White"
p new_band

# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
my_bassist = new_band[:bassist]
p my_bassist

# 4. Find the value attached to :vocalist in your hash.
my_vocalist = new_band[:vocalist]
p my_vocalist

# 5. Add a vocalist to your hash.
new_band[:vocalist] = "Rick Sanchez"
p new_band
# 6. Add a drummer to your hash.
new_band[:drummer] = "John Wick"
p new_band
# 7. Get all the keys in your Hash. What kind of object does that method return?
keys = new_band.keys
p keys
# 8. Get all the values in your Hash. What kind of object does that method return?
values = new_band.values
p values
# 9. Assign a new value to the :vocalist key of your hash.
new_band[:vocalist] = "Jacky Moon"
p new_band
# 10. How has keys changed after the last step? How has values changed?
