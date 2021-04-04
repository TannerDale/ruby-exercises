require 'rspec'
require './lib/dragon'

RSpec.describe Dragon do
  it 'has a name' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.name).to eq('Ramoth')
  end

  it 'has a rider' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.rider).to eq('Lessa')
  end

  it 'has a color' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.color).to eq(:gold)
  end

  it 'is a different dragon' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.name).to eq('Mnementh')
  end

  it 'has a different rider' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.rider).to eq('Flar')
  end

  it 'has a different color' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.color).to eq(:bronze)
  end

  it 'was born hungry' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
  end

  it 'eats a lot' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be false
  end

  it 'has no gold by default' do
    dragon = Dragon.new("Puff", :green, "Snoop Dog")

    expect(dragon.gold).to eq(0)
  end

  it 'steals gold' do
    dragon = Dragon.new("Drogon", :red, "Daenerys")

    3.times { dragon.eat }
    expect(dragon.gold).to eq(0)

    dragon.steal
    dragon.steal

    expect(dragon.gold).to eq(500)
  end

  it 'cannot steal while hungry' do
    dragon = Dragon.new("Puff", :green, "Snoop Dog")

    expect(dragon.steal).to eq("Too hungry, cannot steal.")
    expect(dragon.gold).to eq(0)

    3.times { dragon.eat }
    2.times { dragon.steal }

    expect(dragon.gold).to eq(500)

  end

end
#
