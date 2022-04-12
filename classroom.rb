class Classroom
  attr_accessor :students, :label

  def initialize(label)
    @label = label
    @students = []
  end

  def add_students(student)
    students.push(student)
    student.classroom = self
  end
end
