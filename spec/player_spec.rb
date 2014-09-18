require 'rspec'
require_relative '../lib/character'

describe Player do

  describe 'initialization' do

    before do
      @player = Player.new(name: 'Grillkorv',
                     strength: 3)
    end

    it 'should be a character' do
      expect( @player ).to be_a Character
    end

    it 'should have 100 health' do
      expect( @player.health).to eq 100
    end

  end

end