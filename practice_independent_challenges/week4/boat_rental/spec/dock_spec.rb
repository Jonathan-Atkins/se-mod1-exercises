require 'pry'
require './lib/dock'
require './lib/renter'
require './lib/boat'
require './lib/dock'

RSpec.describe Dock do

    it 'exists' do
        
        dock = Dock.new("The Rowing Dock", 3)

        expect(dock).to be_an_instance_of(Dock)
    end

    it 'can store boats with renters' do
        
        dock = Dock.new("The Rowing Dock", 3)
    
        kayak_1 = Boat.new(:kayak, 20)
        kayak_2 = Boat.new(:kayak, 20)    
        sup_1 = Boat.new(:standup_paddle_board, 15)
        
        patrick = Renter.new("Patrick Star", "4242424242424242")    
        eugene = Renter.new("Eugene Crabs", "1313131313131313")    
    
        dock.rent(kayak_1, patrick)    
        dock.rent(kayak_2, patrick)    
        dock.rent(sup_1, eugene)

        expect(dock.rental_log).to eq({kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene})
    end
    
    it 'can charge a renter' do
        dock = Dock.new("The Rowing Dock", 3)
        kayak_1 = Boat.new(:kayak, 20)
        patrick = Renter.new("Patrick Star", "4242424242424242")    
       
        dock.rent(kayak_1, patrick)    
        4.times do 
            kayak_1.add_hour 
        end

        expected = {:card_number => patrick.credit_card, :amount => 60}

        expect(dock.charge(kayak_1)).to eq(expected)
    end
   
    it 'return boats to dock' do
        dock = Dock.new("The Rowing Dock", 3)
        kayak_1 = Boat.new(:kayak, 20)
        patrick = Renter.new("Patrick Star", "4242424242424242")    
       
        dock.rent(kayak_1, patrick)    
        4.times do 
            kayak_1.add_hour 
        end

        dock.return(kayak_1)
        
        expect(dock.rental_log[kayak_1]).to eq nil
    end

    it 'add additional hour to all boats' do
        dock = Dock.new("The Rowing Dock", 3)
        kayak_1 = Boat.new(:kayak, 20)
        patrick = Renter.new("Patrick Star", "4242424242424242")    
       
        dock.rent(kayak_1, patrick)    
        4.times do 
            kayak_1.add_hour 
        end
        expect(kayak_1.hours_rented).to eq 4
        dock.log_hour
        expect(kayak_1.hours_rented).to eq 5
        # dock.rental_log.keys
        
    end
    
    
end