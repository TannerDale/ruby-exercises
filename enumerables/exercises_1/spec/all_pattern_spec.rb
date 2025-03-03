RSpec.describe 'All Pattern' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      if not number.zero?
        all_zeros = false
        break
      end
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      if word != "gone"
        all_gone = false
        break
      end
    end

    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = true
    words.each do |word|
      if word != "gone"
        all_gone = false
        break
      end
    end
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = true
    strings.each do |string|
      if not string.empty?
        all_empty = false
        break
      end
    end

    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    all_empty = true
    strings.each do |string|
      if not string.empty?
        all_empty = false
        break
      end
    end
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each do |word|
      if not word.upcase!
        all_caps = false
        break
      end
    end

    expect(all_caps).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = true
    all_lies = false if lies.any? do |word|
      word == true
    end
    expect(all_lies).to eq(true)
  end

  it 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = true
    all_multiples_of_7 = false if numbers.any? do |number|
      number % 7 != 0
    end
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = true
    numbers.each do |number|
      if number.to_s.length != 3
        all_3_digits = false
        break
      end
    end
    expect(all_3_digits).to eq(false)
  end

  it 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = true
    words.each do |word|
      if word.length != 4
        all_4_letters = false
        break
      end
    end

    expect(all_4_letters).to eq(true)
  end
end
