class RollCall
  def initialize
    @students = []
  end

  def <<(student)
    @students << student
  end

  def longest_name
    @students.max_by { |student| student.length }
    end
end
