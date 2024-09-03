# Finish writing the test to make the assertion pass.
# Use the sort and sort_by methods.

describe "#sort/#sort_by" do 
  it "sorts the numbers" do 
    numbers = [8, 23, 7, 29, 9, 10]

    sorted_numbers = numbers.sort

    expect(sorted_numbers).to eq([7, 8, 9, 10, 23, 29])
  end

  it "sorts the names alphabetically" do 
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]

    sorted_names = names.sort
    expect(sorted_names).to eq(["Donatello", "Leonardo", "Michaelangelo", "Raphael"])
  end

  it "sorts the names by name length" do 
    names = ["Leonardo", "Donatello", "Michaelangelo", "Raphael"]

    sorted_names = names.sort_by{|name| name.length}

    expect(sorted_names).to eq(["Raphael", "Leonardo", "Donatello", "Michaelangelo", ])
  end

  it "sorts the names by corresponding value" do 
    # This one is spicy! You might need to use multiple enumerables and 
    # do it in multiple steps.
    people = [
        ["Sofie", 4],
        ["Scarlett", 9],
        ["Stella", 8]
      ]
  
   people_in_order = people.sort_by{|person| person[1]}
   sorted_names = people_in_order.map {|person| person[0]}

    expect(sorted_names).to eq(["Sofie", "Stella", "Scarlett"])
  end

  it 'returns the names in order of highest value' do
    people = [
      ["Sofie", 4],
      ["Scarlett", 9],
      ["Stella", 8]
    ]

    sorted_names = people.sort_by {|person| -person[1]}
    names_by_value = sorted_names.map {|person| person[0]}
    
    expect(names_by_value).to eq(["Scarlett", "Stella", "Sofie"])

  end


end