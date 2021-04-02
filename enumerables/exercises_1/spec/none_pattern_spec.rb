RSpec.describe 'none pattern' do

  it 'none are broken' do
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = true
    things.each do |thing|
      none_broken = false if thing == "broken"
    end
    expect(none_broken).to eq(true)
  end

  it 'double negative' do
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each do |number|
      if number < 0
        not_none_negative = false
        break
      end
    end
    expect(not_none_negative).to eq(false)
  end

  it 'none are negative' do
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    numbers.each do |number|
      if number < 0
        none_negative = false
        break
      end
    end

    expect(none_negative).to eq(true)
  end

  it 'none shall pass' do
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    none_shall_pass = true
    critters.each do |critter|
      if critter.include?("pass")
        none_shall_pass = true
        break
      end
    end

    expect(none_shall_pass).to eq(true)
  end

  it 'one or more shall pass' do
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    none_shall_pass = true
    phrases.each do |phrase|
      if phrase.include?("pass")
        none_shall_pass = false
        break
      end
    end

    expect(none_shall_pass).to eq(false)
  end

  it 'none even' do
    numbers = [3, 9, 15, 21, 19]
    none_even = true
    numbers.each do |number|
      if number.even?
        none_even = false
        break
      end
    end

    expect(none_even).to eq(true)
  end
end
