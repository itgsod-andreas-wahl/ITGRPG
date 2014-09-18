require 'rspec'
require_relative '../lib/character'

describe Enemy do

  describe 'initialization' do

    it 'should be a Character' do
      enemy = Enemy.new(name: 'Snigel',
                        health: 20,
                        strength: 1)
      expect( enemy ).to be_a Character
    end

  end

end