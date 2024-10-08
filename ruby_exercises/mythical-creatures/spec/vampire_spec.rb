require 'rspec'
require './lib/vampire'

RSpec.describe Vampire do
  xit 'has a name' do
    vampire = Vampire.new('Dracula')
    expect(vampire.name).to eq('Dracula')
  end

  xit 'xit can be named something else' do
    vampire = Vampire.new('Vladimir')
    expect(vampire.name).to eq('Vladimir')
  end

  xit 'keeps a pet bat by default' do
    vampire = Vampire.new('Ruthven')
    expect(vampire.pet).to eq('bat')
  end

  xit 'can keep other pets' do
    vampire = Vampire.new('Varney', 'fox')
    expect(vampire.pet).to eq('fox')
  end

  xit 'is thirsty by default' do
    vampire = Vampire.new('The Count')

    expect(vampire.thirsty).to be true
  end

  xit 'is not thirsty after drinking' do
    vampire = Vampire.new('Elizabeth Bathory')

    vampire.drink
    expect(vampire.thirsty).to be false
  end
end
