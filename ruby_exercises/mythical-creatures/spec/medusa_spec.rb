require 'rspec'
require './lib/medusa'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false  
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'Medusa can only have three victims' do
    medusa = Medusa.new('Cassiopea')
    victim1 = Person.new('Jon Atkins')
    victim2 = Person.new('Julian Tallent')
    victim3= Person.new('Cameron Lee')
    victim4 = Person.new('Xavier Braxton')

    
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    expect(medusa.statues.count).to eq(3)
    
    medusa.stare(victim4)
    #require 'pry'; binding.pry
    expect(medusa.statues.count).to eq(3)
    expect(medusa.statues.first.name).to eq('Julian Tallent')

  end

  it 'if a fourth victim is stoned the first is unstoned' do
    medusa = Medusa.new('Cassiopea')
    victim1 = Person.new('Jon Atkins')
    victim2 = Person.new('Julian Tallent')
    victim3= Person.new('Cameron Lee')
    victim4 = Person.new('Xavier Braxton')

    
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    expect(medusa.statues.count).to eq(3)
    
    medusa.stare(victim4)
    #require 'pry'; binding.pry
    expect(medusa.statues.count).to eq(3)
    expect(medusa.statues.first.name).to eq('Julian Tallent')

    expect(victim1.name).to eq('Jon Atkins')    

  end
end
