RSpec.describe 'inject pattern test' do

  it 'test 1' do
    numbers = [28, 12, 38, 1, 91]
    # Iterate over the numbers array defined above,
    # to find the difference of all the numbers
    difference = 0
    numbers.each do |number|
      difference = difference - number
    end
    expect(difference).to eq(-170)
  end

  it 'test 2' do
    bills = {
      rent: 800,
      car: 240,
      insurance: 110,
      medical: 1112
    }
    # Iterate over the bills hash defined above
    # to find the difference of all the values
    difference = bills.values.reduce(0, &:-)
    expect(difference).to eq(-2262)
  end

  it 'test 3' do
    numbers = [2, 3, 5, 7]
    # Iterate over the numbers array defined above
    # to find the product of all the numbers
    product = numbers.reduce(&:*)

    expect(product).to eq(210)
  end

  it 'test 4' do
    scrabble_score = {
      letter_total: 23,
      word_muliplier: 3,
      bonus: 2
    }
    # Iterate over the scarbble_score hash defined above
    # to find the product of all the values
    product = scrabble_score.values.reduce(&:*)

    expect(product).to eq(138)
  end

  it 'test 5' do
    airlines = ["Southwest", "Delta", "United", "Frontier"]
    # Iterate over the airlines array defined above to
    # create a hash with the name of the airline as the
    # key and the length of the name as the value

    number_of_letters = airlines.map { |airline|
      {airline => airline.length}
    }.reduce(&:merge)


    expected = {
      "Southwest" => 9,
      "Delta" => 5,
      "United" => 6,
      "Frontier" => 8
    }
    expect(number_of_letters).to eq(expected)
  end

  it 'test 6' do
    topping_calories = {
      pepperoni: 430,
      sausage: 400,
      olives: 10,
      peppers: 10,
      onions: 20
    }
    # Iterate over the topping_calories hash defined above
    # to create an array of all the toppings

    toppings = topping_calories.keys.map { |key| key.to_s }

    expect(toppings).to eq(["pepperoni", "sausage", "olives", "peppers", "onions"])
  end

  it 'test 7' do
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # Iterate over the elements array defined above
    # to find the sum of all the integers

    sum_of_second_values = elements.map { |arr| arr.last }.sum

    expect(sum_of_second_values).to eq(31)
  end

  it 'test 8' do
    toppings = {
      pepperoni: {
        calories: 430,
        quantity: 5
      },
      sausage: {
        calories: 400,
        quantity: 10
      },
      olives: {
        calories: 10,
        quantity: 20
      },
      peppers: {
        calories: 10,
        quantity: 20
      },
      onions: {
        calories: 20,
        quantity: 20
      }
    }
    # Iterate over the toppings array defined above to find
    # total calories. You will need to multiply each topping's
    # calorie count by the quantity

    total_calories = toppings.values.map { |attributes|
      attributes.to_a.map { |aspect| aspect.last }.reduce(&:*)
    }.sum

    expect(total_calories).to eq(6950)
  end


  it 'test 9' do
    grades = {
      quizzes: [8, 5, 3, 6, 5],
      tests: [23, 21, 24],
      essays: [10, 11, 10],
      final: [47]
    }
    # Iterate over the elements array defined above
    # to calculate the final grade. The final grade is
    # calculated by averaging each category together and
    # summing all of the averages

    final_grade = grades.values.map { |test_type|
      test_type.sum.fdiv(test_type.length)
    }.sum

    expect(final_grade).to eq(85.40)
  end

  it 'test 10' do
    menu = {
      empanadas: {
        flavors: ["chicken", "potato", "steak", "veggie"],
        gluten_free: false
      },
      scones: {
        flavors: ["blueberry", "vanilla"],
        gluten_free: false
      },
      parfaits: {
        flavors: ["blueberry", "strawberry", "cherry"],
        gluten_free: true
      }
    }


    # Iterate over the menu hash above to create a printable
    # version of the menu

    formatted_items = menu.map { |food, qualities|
      flavors_exclude_last = qualities[:flavors][..-2].join(", ")
      flavors_last = qualities[:flavors].last
      gluten = qualities[:gluten_free] ? "(gluten free)" : "(non gluten free)"

      "- #{flavors_exclude_last}, and #{flavors_last} #{food} #{gluten}"

    }.join("\n")

    printable_menu = "Menu:\n#{formatted_items}\n"

    expected =  "Menu:\n"\
                "- chicken, potato, steak, and veggie empanadas (non gluten free)\n"\
                "- blueberry, and vanilla scones (non gluten free)\n"\
                "- blueberry, strawberry, and cherry parfaits (gluten free)\n"

    expect(printable_menu).to eq(expected)
  end
end
