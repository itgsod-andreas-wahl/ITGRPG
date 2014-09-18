require 'rspec'
require_relative '../lib/character'


describe Character do

  describe 'initialization' do

    before do
      @char = Character.new(name: 'Grillkorv',
                        health: 100,
                        strength: 12)
    end

    it 'should have a name' do
      expect( @char.name ).to match 'Grillkorv'
    end

    it 'should have a health' do
      expect( @char.health ).to eq 100
    end

    it 'should have a strength' do
      expect( @char.strength ).to eq 12
    end

  end

  describe 'dead or alive' do

    it 'should be alive if health is greater than 0' do
      char = Character.new(name: '',
                           health: 100,
                           strength: 0)
      expect( char ).to be_alive

      char = Character.new(name: '',
                           health: 1,
                           strength: 0)
      expect( char ).to be_alive
    end

    it 'should be dead if health is 0 or less' do
      char = Character.new(name: '',
                           health: 0,
                           strength: 0)
      expect( char ).to be_dead

      char = Character.new(name: '',
                           health: -10,
                           strength: 0)
      expect( char ).to be_dead
    end

  end

  describe 'eating' do

    it 'should gain health when eating' do



    end

  end

end