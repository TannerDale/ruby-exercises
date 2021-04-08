class Retirement
  def calculate(age, retire)
    age_error = "Error. Age cannot be negative."
    retire_error = "Error. You cannot retire before you are born."

    return age_error if age < 0
    return retire_error if retire < 0

    years_away = retire - age
    "You have #{years_away} years left until you can retire. It is #{2015}, so you can retire in #{2015 + years_away}."
  end
end
