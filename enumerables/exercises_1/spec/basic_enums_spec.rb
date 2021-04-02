RSpec.describe 'Basic Enums Test' do
  it 'solve for x' do
    s = ''
    5.times do
      s += 'x'
    end
    expect(s).to eq('xxxxx')
  end

  it 'simple sum' do
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    sum = numbers.sum
    expect(sum).to eq(15)
  end
end
