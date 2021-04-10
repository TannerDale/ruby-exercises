class Student
  GRADES = %w(A B C D F)
  attr_reader :grade
  def initialize
    @grade_index = 2
  end

  def grade
    GRADES[@grade_index]
  end

  def study
    @grade_index -= 1 unless @grade_index == 0
  end

  def slack_off
    @grade_index += 1 unless @grade_index == 4
  end

end
