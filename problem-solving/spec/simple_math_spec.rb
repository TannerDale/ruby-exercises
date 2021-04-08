require "./lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do
    sm = SimpleMath.new
    #
    # call the method being tested
    # determine your expected result
    result = sm.multiply(9, 27)
    #
    # check results
    expect(result).to eq(243)
  end


  it 'can multiply two other numbers' do
    sm = SimpleMath.new
    #
    # call the method being tested
    # determine your expected result
    result = sm.multiply(11, 3567)
    # check results
    expect(result).to eq(39237)
  end

  it 'can divide two numbers' do
    sm = SimpleMath.new

    result = sm.divide(72, 2)

    expect(result).to eq(36)
  end

  it 'can divide two other numbers' do
    sm = SimpleMath.new

    result = sm.divide(99, 4)

    expect(result).to eq(24.75)
  end
end
