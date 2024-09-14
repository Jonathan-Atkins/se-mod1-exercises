require 'pry'
require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
    
    it 'has a boat with a price' do 
        kayak = Boat.new(:kayak, 20)

        expect(kayak).to be_an_instance_of(Boat)
        expect(kayak.type).to eq(:kayak)
        expect(kayak.price_per_hour).to eq(20)
    end

    it 'can determine hours rented' do
        kayak = Boat.new(:kayak, 20)

        expect(kayak.hours_rented).to eq(0)
        
        kayak.add_hour
        kayak.add_hour
        kayak.add_hour

        expect(kayak.hours_rented). to eq(3)
    end

    it 'has a renter' do

        renter = Renter.new("Patrick Star", "4242424242424242")

        expect(renter.name).to eq("Patrick Star")
        expect(renter.credit_card).to eq("4242424242424242")
    end
end