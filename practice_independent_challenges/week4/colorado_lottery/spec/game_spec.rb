require './lib/game'

RSpec.describe Game do
    it 'exists' do
        pick_4        = Game.new('Pick 4', 2)
        expect(pick_4).to be_a Game

        mega_millions = Game.new('Mega Millions', 5, true)
        expect(mega_millions).to be_a Game
    end

    it ' Mega Millions has a name' do
        mega_millions = Game.new('Mega Millions', 5, true)
        expect(mega_millions.name).to eq("Mega Millions")
    end

    it 'Costs to play' do
        mega_millions = Game.new('Mega Millions', 5, true)
        expect(mega_millions.cost).to eq(5)
    end

    it 'determines national drawing?' do 
        pick_4        = Game.new('Pick 4', 2)
        expect(pick_4.national_drawing?).to eq false
    end
end
